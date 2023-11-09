//
//  ContactUsProfileView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/8/23.
//

import SwiftUI

struct ContactUsProfileView: View {
    var imageString: String
    var profileName: String
    var profileTitle: String
    var profileBody: String
    var body: some View {
        VStack {
            Image(imageString)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 150)
                .clipShape(.circle)
                .padding([.leading, .trailing], 6)

            Text(profileName)
                .font(.title3)
                .bold()
            
            Text(profileTitle)
        }
    }
}

#Preview {
    ContactUsProfileView(imageString: "emmyprofile", profileName: "Zenith Harmony", profileTitle: "Your Ultimate Yoga Guru!", profileBody: "Greetings, beautiful souls! I'm Zenith Harmony, your cosmic yoga guru, blending ancient wisdom with intergalactic vibes. With a Ph.D. in Quantum Yoga Philosophy and mastery in Anti-Gravity Asanas, I lead transformative sessions that go beyond physical postures. Join me to align your chakras with distant galaxies, inhale stardust, and exhale love. Let's twirl like galaxies and find our zen amidst the cosmic chaos. Namaste, star travelers! 🌌✨")
}
