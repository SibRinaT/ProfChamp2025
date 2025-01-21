//
//  splash.swift
//  ProfChamp2025
//
//  Created by Ainur on 20.01.2025.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false

    var body: some View {
        NavigationStack {
            if isActive {
                OnboardingView1()
            } else {
                ZStack {
                    Color("blue")
                        .edgesIgnoringSafeArea(.all)
                    Image("icon")
                }
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation() {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
