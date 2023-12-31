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
    var imageName: String

    var body: some View {
        ZStack(alignment: .top) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(width: 360, height: 550)
                .cornerRadius(10)
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title)
                        .foregroundStyle(Color.white)
                        .bold()
                        .padding([.bottom, .trailing], 4)
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
    CardView(title: "What is Reiki, and how do we benefit from this practice?", description: "Learn about the benefits of this wonderous craft.", imageName: "medi8")
}
