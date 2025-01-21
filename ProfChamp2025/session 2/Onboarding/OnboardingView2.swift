//
//  OnboardingView1.swift
//  ProfChamp2025
//
//  Created by Ainur on 20.01.2025.
//

import SwiftUI

struct OnboardingView2: View {
    var body: some View {
        ZStack {
            Color("blue")
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image("onb2")
                Image("onb22")
                Text("Начнем\nпутешествие")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.custom("", size: 38))
                Text("Умная, великолепная и модная \nколлекция Изучите сейчас")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("subColor"))
                Spacer()
                NavigationLink(destination: OnboardingView3()) {
                    RoundedRectangle(cornerRadius: 16)
                        .overlay(
                            Text("Далее")
                                .foregroundColor(.black)
                        )
                        .foregroundColor(Color(.white))
                        .frame(height: 60)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    NavigationStack {
        OnboardingView2()
    }
}
