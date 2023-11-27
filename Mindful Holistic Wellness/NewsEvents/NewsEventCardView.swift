//
//  NewsEventCardView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/27/23.
//

import SwiftUI

struct NewsEventCardView: View {
    var image: Image?
    var body: some View {
        newsCardView()

    }
    @ViewBuilder func newsCardView() -> some View {
        if let image {
            image
                .resizable()
                .scaledToFit()
                .frame(minHeight: 300)
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
        }
        Image("")
            .resizable()
            .scaledToFit()
            .frame(minHeight: 300)
            .frame(maxWidth: .infinity)
            .cornerRadius(10)
    }
}

#Preview {
    NewsEventCardView()
}
