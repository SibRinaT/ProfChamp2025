//
//  PasswordField2.swift
//  ProfChamp2025
//
//  Created by Ainur on 26.01.2025.
//

import SwiftUI

struct PasswordField2: View {
    @Binding var text: String
    var placeholder: String
    var title: String
    @State private var hidden = true
    
    var body: some View {
        VStack {
            Text(title)
            if hidden {
                TextField(placeholder, text: $text)
            } else {
                SecureField(placeholder, text: $text)
            }
            Button(action: {
                hidden.toggle()
            }) {
                Image(systemName: hidden ? "eye" : "eye.slash")
            }
        }
    }
}

#Preview {
    PasswordField2(text: .constant(""), placeholder: "password", title: "password")
}
