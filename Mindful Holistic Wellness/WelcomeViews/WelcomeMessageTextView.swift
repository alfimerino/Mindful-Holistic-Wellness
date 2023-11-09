//
//  WelcomeMessageTextView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/6/23.
//

import SwiftUI

struct WelcomeMessageTextView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 38) {
                Text("Namaste")
                    .font(.largeTitle)
                    .bold()
                Text("Find your balance, relax your mind, and embark on a journey of holistic health and well-being with us. \n \nWe're here to inspire, empower, and support you on your path to a healthier, happier you.")
                    .font(.title2)
                    .bold()
            }.frame(width: 300)
            Spacer()
        }.frame(width: 400)
            .padding(.leading, 30)
            .foregroundStyle(Color.white)
    }
}

#Preview {
    WelcomeMessageTextView().preferredColorScheme(.dark)
}
