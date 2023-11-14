//
//  NewsEventsDetailView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/14/23.
//

import SwiftUI

struct NewsEventsDetailView: View {
    var title: String
    var image: Image
    var body: some View {
        VStack {
            SheetDismissButton()
            image
                .aspectRatio(contentMode: .fit)
                .frame(width: 400)
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    NewsEventsDetailView(title: "Title", image: Image(systemName: "chevron.left.circle.fill"))
}
