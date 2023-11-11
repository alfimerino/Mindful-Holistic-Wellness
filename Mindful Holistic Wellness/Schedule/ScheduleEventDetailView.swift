//
//  ScheduleEventDetailView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/9/23.
//

import SwiftUI

struct ScheduleEventDetailView: View {
    @State private var pickerSelection = 0
    @Environment (\.dismiss) var dismiss    
    var body: some View {
        VStack {
            Button {
                dismiss()
            }label: {
                Image(systemName: "chevron.compact.down")
                    .resizable()
                    .foregroundColor(.gray)
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20)
            }.padding(.top)
            HStack(alignment: .top) {
                ProfileImageView(imageString: Instructor.aurora.imageName)
                VStack(alignment: .leading) {
                    Text("Beachside Meditation and Reiki")
                        .font(.title2)
                        .bold()
                    Text("Tue, November 14")
                        .font(.headline)
                    Text("10:30 AM - 11:30 AM")
                        .font(.headline)
                    Text("")
                        .font(.headline)
                        .bold()
                }.padding(.bottom)
            }.padding(.bottom, 5)
            Picker(selection: $pickerSelection) {
                Text("Event Details").tag(0)
                Text("About Instructor").tag(1)
            } label: {

            }.pickerStyle(.segmented)
                .padding([.leading, .trailing])
            if pickerSelection == 0 {
                Text("Join Aurora, @the_mindful_ot for a grounding evening of meditation and energy healing. Allow yourself to be guided through visualizations and breath-work while receiving the benefits of this ancient practice. Offering will be held on the lawn, under the stars. In case of rain, students will be fully refunded, minus any eventbrite fees if purchased through eventbrite. Please bring:Bring a large towel and or blanket and support for the head. Feel free to bring anything that will make it a cozy experience.To avoid eventbrite fees, pay in cash day of OR zelle payment Info@wellnessyot.com. Include your full name and date of event in the comments. Parking: Valet parking $5.").padding()
            } else if pickerSelection == 1 {
                Text("Greetings, luminous souls! I'm Aurora Moon, your dedicated yoga mentor under the celestial canopy. With boundless energy and a sprinkle of stardust, I guide you on an illuminating yoga journey. Armed with Quantum Yoga Philosophy expertise, I assist you in harmonizing your being with the cosmos. Join me in inhaling cosmic wisdom and exhaling tranquility. Together, let's embrace the cosmic flow. Namaste, cosmic companions! 🌠🌌").padding()
            }
        }
        Spacer()
    }
}

#Preview {
    ScheduleEventDetailView()
}
