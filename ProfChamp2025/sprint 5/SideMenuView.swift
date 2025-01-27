//
//  SideMenuView.swift
//  ProfChamp2025
//
//  Created by Ainur on 23.01.2025.
//

import SwiftUI

struct SideMenuView: View {
    @State private var isMenuOpen: Bool = false

    var body: some View {
        ZStack {
            // Основной контент
            Color.white
                .edgesIgnoringSafeArea(.all)

            VStack {
                HStack {
                    Button(action: {
                        withAnimation {
                            isMenuOpen.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    .padding()

                    Spacer()
                }

                Spacer()
            }

            // Боковое меню
            if isMenuOpen {
                Color.black.opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation {
                            isMenuOpen.toggle()
                        }
                    }

                HStack {
                    VStack(alignment: .leading, spacing: 20) {
                        Button(action: {
                            print("Главная выбрана")
                            isMenuOpen.toggle()
                        }) {
                            Text("Главная")
                                .foregroundColor(.black)
                                .font(.title2)
                        }

                        Button(action: {
                            print("Профиль выбран")
                            isMenuOpen.toggle()
                        }) {
                            Text("Профиль")
                                .foregroundColor(.black)
                                .font(.title2)
                        }

                        Button(action: {
                            print("Настройки выбраны")
                            isMenuOpen.toggle()
                        }) {
                            Text("Настройки")
                                .foregroundColor(.black)
                                .font(.title2)
                        }

                        Spacer()
                    }
                    .padding(.top, 100)
                    .padding(.leading, 20)
                    .frame(width: UIScreen.main.bounds.width * 0.7, alignment: .leading)
                    .background(Color.white)
                    .offset(x: isMenuOpen ? 0 : -UIScreen.main.bounds.width)

                    Spacer()
                }
                .transition(.move(edge: .leading))
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            SideMenuView()
                .navigationTitle("Мое приложение")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

