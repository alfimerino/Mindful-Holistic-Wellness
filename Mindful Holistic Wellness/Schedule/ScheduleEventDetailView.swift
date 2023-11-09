//
//  ScheduleEventDetailView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/9/23.
//

import SwiftUI

struct ScheduleEventDetailView: View {
    @State private var pickerSelection = 0
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                ProfileImageView(imageString: "Dana2")
                VStack(alignment: .leading) {
                    Text("Hot 26&2")
                        .font(.title2)
                        .bold()
                    Text("10:30 AM - 11:30 AM")
                        .font(.headline)
                        .bold()
                    Text("Aurora Moon")
                        .font(.headline)
                        .bold()
                }.padding(.bottom)
            }.padding(.bottom, 5)
            Picker(selection: $pickerSelection) {
                Text("Event Details").tag(0)
                Text("About Instructor").tag(1)
            } label: {

            }.pickerStyle(.segmented)

        }
    }
}

#Preview {
    ScheduleEventDetailView()
}
