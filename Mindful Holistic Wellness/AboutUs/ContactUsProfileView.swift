//
//  ContactUsProfileView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/8/23.
//

import SwiftUI

struct ContactUsProfileView: View {
    var instructor: Instructor
    var body: some View {
        VStack {
            Image(instructor.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 150)
                .clipShape(.circle)
                .padding([.leading, .trailing], 6)

            Text(instructor.name)
                .font(.title3)
                .bold()
            
            Text(instructor.title)
        }
    }
}

#Preview {
    ContactUsProfileView(instructor: Instructor.aurora)
}
