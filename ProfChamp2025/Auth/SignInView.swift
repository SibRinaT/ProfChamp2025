//
//  ContentView.swift
//  ProfChamp2025
//
//  Created by Ainur on 18.01.2025.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
    
        VStack {
            VStack {
            //            Text("Привет!")
            //                .bold()
            //                .font(.title)
            Image("Privet")
            Text("Заполните Свои данные или продолжите через социальные медиа")
                .multilineTextAlignment(.center)
                .font(.title3)
                .foregroundColor(Color("textDark"))
            VStack {
                InputTextField(title: "Email", placeholder: "xyz@gmail.com", text: $email)
                PasswordField(title: "Пароль", placeholder: "*****", text: $password)
                    .padding(.top, -30)
            }
            HStack {
                Spacer()
                Button(action:{}) {
                    Text("Восстановить")
                        .foregroundColor(Color("textDark"))
                }
            }
                NavigationLink(destination: (TabBar())){
                        RoundedRectangle(cornerRadius: 20)
                            .overlay(
                                Text("Войти")
                                    .foregroundColor(.white)
                            )
                            .foregroundColor(Color("blue"))
                            .frame(height: 60)
                }
                               }
            .padding(.top, 100)
            Spacer()
            
            NavigationLink(destination: SignUpView()) {
                Text("Вы впервые? Создать пользователя")
                    .foregroundColor(.black)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    SignInView()
}
