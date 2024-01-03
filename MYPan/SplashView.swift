//
//  SplashView.swift
//  MYPan
//
//  Created by 杨竣轶 on 2024/1/4.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive: Bool = false

    var body: some View {
        VStack {
            if isActive {
                OnboardingView()
            } else {
                Text("App Logo")
                    .font(.largeTitle)
                Text("欢迎使用HPan")
                    .font(.headline)
            }
        }
        .onAppear {
            // 延迟切换到引导页
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
