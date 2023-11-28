//
//  ProfileDetailView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/28/23.
//

import SwiftUI

struct ProfileDetailView: View {
    var instructor: Instructor?
    var body: some View {
        SheetDismissButton()
        VStack(alignment: .center) {
            Image(instructor?.imageName ?? "Group3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 400)
            Text(instructor?.name ?? "").font(.title3).bold()
            Text(instructor?.title ?? "").padding(.bottom, 30)
            Text(instructor?.bio ?? "Emmy, also known as The Mindful OT and creator of Yo.T Holistic Wellness, is a certified and registered occupational therapist as well as a yoga instructor and reiki practitioner . She has brought yoga & mindfulness throughout Broward county including public and private schools, private psychotherapy practices, Holy Cross Hospital’s rehabilitation and acute care staff, private businesses and the community. She integrates her skills and experience as an OT to address self- awareness and reflection, while promoting personal growth and bringing community together. Emmy and the Yo.T team are known throughout Broward County for their multi sensory experiences | wellness retreats. For the latest offering, follow Emmy on IG @the_mindful_ot")
            Spacer()
        }.padding()
    }
}

#Preview {
    ProfileDetailView(instructor: Instructor.aurora)
}
