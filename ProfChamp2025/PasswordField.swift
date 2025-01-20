//
//  PasswordField.swift
//  ProfChamp2025
//
//  Created by Ainur on 18.01.2025.
//

import SwiftUI

struct PasswordField: View {
    let title: String
      let placeholder: String
      @State private var isPasswordHidden = true
      @Binding var text: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .padding(.leading)
            ZStack {
                Rectangle()
                    .cornerRadius(16)
                    .frame(width: 335, height: 48)
                    .foregroundColor(Color("background"))
                HStack {
                    if isPasswordHidden {
                        SecureField(placeholder, text: $text)
                            .padding(.leading, 30)
                    } else {
                        TextField(placeholder, text:  $text)
                            .padding(.leading, 30)
                    }
                }
                Button(action: {
                    isPasswordHidden.toggle()
                }) {
                    Image(self.isPasswordHidden ? "EyeSlash" : "EyeSlash")
                        .accentColor(Color("PrimaryColor"))
                }
                .padding(.leading, 280)
            }
            
        }
        .padding()
    }
}

#Preview {
    PasswordField(title: "Пароль",
                      placeholder: "*******",
                              text: .constant("")
                              )
}
