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
                ContactUsProfileView(instructor: Instructor.zenith)

                ContactUsProfileView(instructor: Instructor.luna)
                Spacer()
            }
            
            ContactUsProfileView(instructor: Instructor.aurora)

            Image("Group3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 180)

            HStack(alignment: .center, spacing: 32) {
                Spacer()
                SocialMediaButton(sharePlatform: .instagram)
                SocialMediaButton(sharePlatform: .facebook)
                SocialMediaButton(sharePlatform: .eventbrite).clipShape(Circle())
                SocialMediaButton(sharePlatform: .yt)
                SocialMediaButton(sharePlatform: .email)
                Spacer()
            }.padding(.top, 20)


            .navigationTitle("About Us")
        }
    }
}

#Preview {
    ContactUsView()
}
