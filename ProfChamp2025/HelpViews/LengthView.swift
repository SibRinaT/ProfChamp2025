//
//  LengthView.swift
//  ProfChamp2025
//
//  Created by Ainur on 27.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    private let maxLength: Int = 10 // Максимальное количество символов

    var body: some View {
        VStack {
            TextField("Введите текст", text: $text)
                .padding()
                .onChange(of: text) { newValue in
                    // Проверяем количество символов
                    if newValue.count > maxLength {
                        // Обрезаем текст, если он превышает максимальную длину
                        text = String(newValue.prefix(maxLength))
                    }
                }

            Text("Символов: \(text.count)/\(maxLength)")
                .foregroundColor(text.count == maxLength ? .red : .gray)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
