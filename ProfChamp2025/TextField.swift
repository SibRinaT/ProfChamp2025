//
//  TextField.swift
//  ProfChamp2025
//
//  Created by Ainur on 18.01.2025.
//

import SwiftUI

struct InputTextField: View {
    let title: String
    let placeholder: String
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
                TextField(placeholder, text: $text)
                    .padding(.leading, 30)
            }
        }
        .padding()
    }
}

#Preview {
    InputTextField(title: "Email",
              placeholder: "xyz@gmail.com", text: .constant(""))
}
