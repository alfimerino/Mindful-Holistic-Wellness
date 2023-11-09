//
//  SocialMediaButton.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/9/23.
//

import SwiftUI

enum SharePlatform {
    case facebook
    case instagram
    case eventbrite
    case email

    func values() -> (linkURL: String, imageName: String) {
        switch self {
        case .facebook:
            return ("https://www.facebook.com/YO.Tholisticwellness", "facebook-logo")
        case .instagram:
            return ("https://www.instagram.com/the_mindful_ot", "instagram-logo")
        case .eventbrite:
            return ("https://www.eventbrite.com/o/mindful-holistic-wellness-34303308985", "eventbrite-logo")
        case .email:
            return ("mailto:info@wellnessyot.com", "paperplane")
        }
    }
}

struct SocialMediaButton: View {
    var sharePlatform: SharePlatform = .facebook
    var body: some View {
        HStack {
            if sharePlatform == .email {
                Link(destination:
                        URL(string: "\(sharePlatform.values().linkURL)")!) {
                    Image(systemName: sharePlatform.values().imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 50)
                }
            } else {
                Link(destination:
                        URL(string: sharePlatform.values().linkURL)!) {
                    Image(sharePlatform.values().imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 50)
                }
            }
        }
    }
}

#Preview {
    SocialMediaButton(sharePlatform: .facebook)
}
