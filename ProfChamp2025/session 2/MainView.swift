//
//  MainView.swift
//  ProfChamp2025
//
//  Created by Ainur on 20.01.2025.
//

import SwiftUI

struct MainView: View {
    @State var text: String = ""
    let placeholder: String = ""

    var body: some View {
        VStack {
            HStack {
                Image("3button")
                
                Spacer()
                ZStack {
                    Image("Highlight")
                        .offset(CGSize(width: -70, height: -15))
                    Text("Главная")
                        .font(.largeTitle)
                }
                Spacer()
                Image("shop")
            }
            HStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(16)
                        .frame(height: 52)
                        .shadow(color: Color.black.opacity(0.1), radius: 5)
                    HStack {
                        Image("lupa")
                        TextField(placeholder, text: $text)
                            .foregroundColor(Color("hint"))
                            .font(.caption)
                    }
                    .padding(.horizontal)
                }
                Image("settingsIcon")
            }
            HStack {
                Text("Категории")
                    .font(.custom("", size: 20))
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                Text("")
                HStack {
                    Text("")
                    HStack {
                        Rectangle()
                            .cornerRadius(16)
                            .frame(width: 108, height: 50)
                            .foregroundColor(.white)
                            .overlay(
                                Text("Все")
                            )
                        Rectangle()
                            .cornerRadius(16)
                            .frame(width: 108, height: 50)
                            .foregroundColor(.white)
                            .overlay(
                                Text("Outdoor")
                            )
                        Rectangle()
                            .cornerRadius(16)
                            .frame(width: 108, height: 50)
                            .foregroundColor(.white)
                            .overlay(
                                Text("Tennis")
                            )
                        Rectangle()
                            .cornerRadius(16)
                            .frame(width: 108, height: 50)                .foregroundColor(.white)
                            .overlay(
                                Text("Running")
                            )
                        Rectangle()
                            .cornerRadius(16)
                            .frame(width: 108, height: 50)                .foregroundColor(.white)
                            .overlay(
                                Text("Running")
                            )
                        Rectangle()
                            .cornerRadius(16)
                            .frame(width: 108, height: 50)                .foregroundColor(.white)
                            .overlay(
                                Text("Running")
                            )
                        Rectangle()
                            .cornerRadius(16)
                            .frame(width: 108, height: 50)                .foregroundColor(.white)
                            .overlay(
                                Text("Running")
                            )
                    }
                    .shadow(color: Color.black.opacity(0.1), radius: 3)
                    Text("")
                }
                Text("")
            }
            HStack {
                Text("Популярное")
                    .font(.custom("", size: 20))
                Spacer()
                Text("Все")
                    .foregroundColor(Color(.blue))
            }
            
            HStack {
                Rectangle()
                    .frame(width: 160, height: 180)
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.1), radius: 3)
                    .cornerRadius(16)
            }
            
            HStack {
                Text("Акции")
                    .font(.custom("", size: 20))
                Spacer()
                Text("Все")
                    .foregroundColor(Color(.blue))
            }
            Image("sale")
            Spacer()
        }
        .padding(.horizontal)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    MainView()
}
