//
//  InputFieldView.swift
//  ProfChamp2025
//
//  Created by Ainur on 26.01.2025.
//

import SwiftUI

struct InputFieldView: View {
    let placeholder: String
    let title: String
    @Binding var text: String
        
    var body: some View {
        VStack {
            Text(title)
            TextField(placeholder, text: $text)
        }
    }
}

#Preview {
    InputFieldView(placeholder: "****", title: "E-mail", text: .constant(""))
}
