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
    @StateObject private var viewModel = AuthViewModel()
    @State var shouldPresentSheet = false


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
                    InputTextField(title: "Email", placeholder: "xyz@gmail.com", text:  $viewModel.email)
                    PasswordField(title: "Пароль", placeholder: "*****", text:  $viewModel.password)
                }
                if let errorMessage = viewModel.errorMessage {
                            Text(errorMessage)
                                .foregroundColor(.red)
                                .font(.caption)
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
                Button(action: {
                               Task {
                                   await viewModel.registerUser()                                                                   
                               }
                           }) {
                               Text("Регистрация")
                                   .foregroundColor(.white)
                                   .padding()
                                   .frame(width: 350,height: 60)
                                   .background(Color("blue"))
                                   .cornerRadius(10)
                           }
                if viewModel.isRegistered {
                                MainView()
                            }
            }
            .padding(.top, 100)
            Spacer()

            NavigationLink(destination: SignInView()) {
                Text("Есть аккаунт? Войти")
                    .foregroundColor(.black)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    NavigationStack {
        SignUpView()
    }
}
