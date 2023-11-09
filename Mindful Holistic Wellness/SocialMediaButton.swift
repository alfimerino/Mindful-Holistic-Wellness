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
            return ("facebook.com", "facebook-logo")
        case .instagram:
            return ("instagram.com", "instagram-logo")
        case .eventbrite:
            return ("eventbrite.com", "eventbrite-logo")
        case .email:
            return ("info@wellnessyot.com", "paperplane")
        }
    }
}

struct SocialMediaButton: View {
    var sharePlatform: SharePlatform = .facebook
    var body: some View {
        HStack {
//            Link(destination:
//                    URL(string: "https://www.instagram.com/the_mindful_ot/?utm_source=ig_web_button_share_sheet&igshid=OGQ5ZDc2ODk2ZA==")!) {
//                Image("instagram-logo")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 100)
//            }

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

#Preview {
    SocialMediaButton(sharePlatform: .facebook)
}
