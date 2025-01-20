//
//  OnboardingView1.swift
//  ProfChamp2025
//
//  Created by Ainur on 20.01.2025.
//

import SwiftUI

struct OnboardingView1: View {
    @State private var dragOffset: CGSize = .zero

    var body: some View {
        ZStack {
            Color("blue")
                .ignoresSafeArea(.all)
            VStack {
                Text("Добро \nпожаловать")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.custom("", size: 38))
                
                Spacer()
                
                Image("onb1")
                Image("onb11")
                
                Spacer()
                NavigationLink(destination: OnboardingView2()) {
                    RoundedRectangle(cornerRadius: 16)
                        .overlay(
                            Text("Начать")
                                .foregroundColor(.black)
                        )
                        .foregroundColor(Color(.white))
                        .frame(height: 60)
                }
            }
//            .offset(x: dragOffset.width, y: dragOffset.height * 0.1) // небольшое смещение по y
//                       .rotationEffect(.degrees(Double(dragOffset.width) / 15))
//                     
//                       .gesture(
//                           DragGesture()
//                            .onChanged { value in
//                                dragOffset = value.translation
//                                
//                            }
//                       )
            .padding(.horizontal)
        }
    }
}

#Preview {
    NavigationStack {
        OnboardingView1()
    }
}
