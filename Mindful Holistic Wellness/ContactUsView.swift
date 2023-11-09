//
//  ContactUsView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/8/23.
//

import SwiftUI

struct ContactUsView: View {
    var body: some View {
        ScrollView {
            HStack(alignment: .center) {
                Spacer()
                ContactUsProfileView(imageString: "emmyprofile", profileName: "Zenith Harmony", profileTitle: "Yoga Guru", profileBody: "Greetings, beautiful souls! I'm Zenith Harmony, your cosmic yoga guru, blending ancient wisdom with intergalactic vibes. With a Ph.D. in Quantum Yoga Philosophy and mastery in Anti-Gravity Asanas, I lead transformative sessions that go beyond physical postures. Join me to align your chakras with distant galaxies, inhale stardust, and exhale love. Let's twirl like galaxies and find our zen amidst the cosmic chaos. Namaste, star travelers! 🌌✨")
                
                ContactUsProfileView(imageString: "Maria", profileName: "Luna Starlight", profileTitle: "Sound Bath Specialist", profileBody: "Hello, radiant beings! I'm Luna Starlight, your guide to cosmic yoga adventures. With a galaxy of experience and a heart full of love, I lead transformative sessions. Certified in Quantum Yoga Philosophy, I'll help you align your chakras with the universe. Join me in inhaling stardust and exhaling peace. Let's journey together. Namaste, cosmic explorers! 🌟🧘‍♂️")
                Spacer()
            }
            
            ContactUsProfileView(imageString: "Dana2", profileName: "Aurora Moon", profileTitle: "Yoga Engineer", profileBody: "Greetings, luminous souls! I'm Aurora Moon, your dedicated yoga mentor under the celestial canopy. With boundless energy and a sprinkle of stardust, I guide you on an illuminating yoga journey. Armed with Quantum Yoga Philosophy expertise, I assist you in harmonizing your being with the cosmos. Join me in inhaling cosmic wisdom and exhaling tranquility. Together, let's embrace the cosmic flow. Namaste, cosmic companions! 🌠🌌")

            Image("Group3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 180)

            HStack(alignment: .center, spacing: 32) {
                Spacer()
                SocialMediaButton(sharePlatform: .instagram)
                SocialMediaButton(sharePlatform: .facebook)
                SocialMediaButton(sharePlatform: .eventbrite).clipShape(Circle())
                SocialMediaButton(sharePlatform: .email)
            }.padding(.top, 20)


            .navigationTitle("About Us")
        }
    }
}

#Preview {
    ContactUsView()
}
