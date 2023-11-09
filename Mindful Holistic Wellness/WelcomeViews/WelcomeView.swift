//
//  WelcomeView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/6/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            WelcomeScreenBackgroundView()
            VStack {
                Spacer()
                WelcomeMessageTextView()
                Spacer()
                GetStartedButton()
            }
        }
    }
}

#Preview {
    WelcomeView()
}


