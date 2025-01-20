//
//  OnboardingView1.swift
//  ProfChamp2025
//
//  Created by Ainur on 20.01.2025.
//

import SwiftUI

struct OnboardingView3: View {
    var body: some View {
        ZStack {
            Color("blue")
                .ignoresSafeArea(.all)
            VStack {
             
                Spacer()
                
                Image("onb3")
                Image("onb33")
                Text("У вас есть сила, чтобы")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.custom("", size: 38))
                Text("В вашей комнате много красивых\n и привлекательных растений")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("subColor"))
                Spacer()
                NavigationLink(destination: ContentView()) {
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
        OnboardingView3()
    }
}
