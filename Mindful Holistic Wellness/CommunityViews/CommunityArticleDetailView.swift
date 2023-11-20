//
//  CommunityArticleDetailView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/20/23.
//

import SwiftUI

struct CommunityArticleDetailView: View {
    var image: String
    var descriptionText: String
    var titleText: String
    var body: some View {
            VStack {
                List {
                    Section {
                        Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 380, height: 200)
                            .fixedSize()
                            .padding()
                        Text("In the pursuit of holistic well-being, many individuals find solace in the ancient practice of Yoga. Originating from Indian traditions, Yoga stands as a comprehensive discipline intertwining physical postures, breath control, and meditation. This exploration delves into the profound influence of Yoga, unraveling its multifaceted benefits. \n\n Yoga encompasses a holistic approach to physical fitness, promoting flexibility, strength, and balance. The fusion of purposeful postures and controlled breathing not only contributes to overall physical well-being but also enhances cardiovascular health. Beyond the realms of physical exercise, Yoga emerges as a sanctuary for the mind, offering stress relief and fostering mental clarity through mindful movement and breath awareness. \n\n An integral aspect of Yoga lies in its emphasis on the mind-body connection. Practitioners are encouraged to cultivate a heightened awareness of their physical and mental states, fostering mindfulness that positively ripples through various facets of life. While Yoga does not impose religious connotations, it invites spiritual exploration for those seeking a deeper connection with themselves or a higher power. It unfolds as a transformative path for self-discovery and introspection. \n\n In conclusion, integrating Yoga into one's routine has the potential to be a profoundly transformative journey. Whether one is a seasoned practitioner or a novice, the holistic nature of Yoga extends its accessibility to individuals of all ages and fitness levels. Through the harmonious union of physical postures, breath control, and meditation, Yoga becomes not just a practice but a holistic lifestyle fostering both physical and mental well-being.")
                            .font(.subheadline)
                            .foregroundStyle(Color.primary)
                            .padding([.horizontal])
                    } header: {
                        VStack {
                            Text(titleText)
                                .font(.title)
                                .foregroundStyle(Color.primary)
                                .bold()
                                .padding([.horizontal])
//                                .padding(.bottom, 20)
                        }.background(Color(UIColor.systemBackground))
                    }.background(Color(UIColor.systemBackground))
                }.listStyle(.grouped)
            Spacer()
        }
    }
}

#Preview {
    CommunityArticleDetailView(image: "medi6", descriptionText: "Description", titleText: "Title")
}
