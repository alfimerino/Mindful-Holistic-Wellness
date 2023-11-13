//
//  ProfileImageView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/9/23.
//

import SwiftUI

struct ProfileImageView: View {
    var imageString: String
    var body: some View {
        Image(imageString)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxHeight: 150)
        .clipShape(.circle)            }
}

#Preview {
    ProfileImageView(imageString: "Dana2")
}
