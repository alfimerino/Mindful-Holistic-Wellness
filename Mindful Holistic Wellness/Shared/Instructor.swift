//
//  Instructor.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/11/23.
//

import Foundation

struct Instructor {
    let id = UUID()
    let name: String
    let title: String
    let bio: String
    let imageName: String

    static var aurora: Instructor {
        return  Instructor(name: "Aurora Moon", title: "Yoga Engineer", bio: "Greetings, luminous souls! I'm Aurora Moon, your dedicated yoga mentor under the celestial canopy. With boundless energy and a sprinkle of stardust, I guide you on an illuminating yoga journey. Armed with Quantum Yoga Philosophy expertise, I assist you in harmonizing your being with the cosmos. Join me in inhaling cosmic wisdom and exhaling tranquility. Together, let's embrace the cosmic flow. Namaste, cosmic companions! 🌠🌌", imageName: "Dana2")
    }

    static var luna: Instructor {
        return Instructor(name: "Luna Starlight", title: "Sound Bath Specialist", bio: "Hello, radiant beings! I'm Luna Starlight, your guide to cosmic yoga adventures. With a galaxy of experience and a heart full of love, I lead transformative sessions. Certified in Quantum Yoga Philosophy, I'll help you align your chakras with the universe. Join me in inhaling stardust and exhaling peace. Let's journey together. Namaste, cosmic explorers! 🌟🧘‍♂️", imageName: "LunaPortrait")
    }

    static var zenith: Instructor {
        return Instructor(name: "Zenith Harmony", title: "Yoga Guru", bio: "Greetings, beautiful souls! I'm Zenith Harmony, your cosmic yoga guru, blending ancient wisdom with intergalactic vibes. With a Ph.D. in Quantum Yoga Philosophy and mastery in Anti-Gravity Asanas, I lead transformative sessions that go beyond physical postures. Join me to align your chakras with distant galaxies, inhale stardust, and exhale love. Let's twirl like galaxies and find our zen amidst the cosmic chaos. Namaste, star travelers! 🌌✨", imageName: "zenithPortrait")
    }

    static var instructorsList: [Instructor] {
        return [aurora, zenith, luna]
    }

}
