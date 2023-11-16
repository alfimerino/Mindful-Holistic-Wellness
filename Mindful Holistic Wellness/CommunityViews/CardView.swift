//
//  CardView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/16/23.
//

import Foundation
import SwiftUI

struct CardView: View {
    var title: String
    var description: String

    var body: some View {
        ZStack(alignment: .top) {
            Image("zenithPortrait")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(width: 360, height: 550)
                .cornerRadius(10)
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title)
                        .foregroundColor(.black)
                        .bold()
                        .padding(.bottom, 4)

                    Text(description)
                        .foregroundColor(.black)
                    Spacer()
                }
                Spacer()
            }
            .padding(.leading, 29)
            .padding([.top]) // Add horizontal and top padding
            .cornerRadius(10)
            .shadow(radius: 5)
        }
    }
}

#Preview {
    CardView(title: "What is Reiki?", description: "Learn about the benefits of this wonderous craft.")
}
