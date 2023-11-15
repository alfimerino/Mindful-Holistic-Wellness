//
//  WelcomeScreenBackgroundView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/6/23.
//

import SwiftUI

struct WelcomeScreenBackgroundView: View {
    var body: some View {
        Image("buddhaWelcome")
            .resizable()
            .ignoresSafeArea()
            .scaleEffect(x: -1, y: 1)
            .aspectRatio(contentMode: .fill)
            .overlay(Color.black.opacity(0.7))
            .offset(CGSize(width: 80.0, height: 0))
    }
}

#Preview {
    WelcomeScreenBackgroundView()
}
