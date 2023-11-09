//
//  ScheduleEventTitleDetailsView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/8/23.
//

import SwiftUI

struct ScheduleEventTitleDetailsView: View {
    var event: Event
    var body: some View {
        VStack(alignment: .leading) {
            HStack {

                Text(event.title)
                    .font(.headline)
                    .bold()
            }
            Text(Image(systemName: "mappin.and.ellipse")) +
            Text("\(" ")\(event.location)")
                .font(.footnote)
        }.foregroundStyle(event.cancelled ? Color.red : Color.primary)
    }
}

#Preview {
    ScheduleEventTitleDetailsView(event: ScheduleViewModel.shared.events.first!)
}
