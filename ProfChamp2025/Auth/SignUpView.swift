//
//  SignUpView.swift
//  ProfChamp2025
//
//  Created by Ainur on 21.01.2025.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var name = ""


    var body: some View {
            VStack {
                VStack {
                Text("Регистрация")
                    .bold()
                    .font(.title)
                Text("Заполните Свои данные или продолжите через социальные медиа")
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .foregroundColor(Color("textDark"))
                VStack {
                    InputTextField(title: "Ваше имя", placeholder: "xxxxxxxx", text: $name)
                    InputTextField(title: "Email", placeholder: "xyz@gmail.com", text: $email)
                    PasswordField(title: "Пароль", placeholder: "*****", text: $password)
                }
                HStack {
                    Button(action:{}) {
                        Image("obrabotka")
                        Text("Даю согласие на обработку персональных данных")
                            .foregroundColor(Color("textDark"))
                            .underline()
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
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
                
                Button(action:{}) {
                    Text("Есть аккаунт? Войти")
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
        }
}

#Preview {
    SignUpView()
}
