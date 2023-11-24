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
    @Binding var selectedArticle: CommunityArticle?
    var body: some View {
        ScrollView {
            HStack(alignment: .center) {
                SheetDismissButton()
            }
            VStack {
                Text(selectedArticle?.title ?? "No Title Found")
                    .font(.title)
                    .foregroundStyle(Color.primary)
                    .bold()
                    .padding([.horizontal])
                Image(selectedArticle?.imageName ?? "medi2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 380)
            }.padding(.bottom)
            Text(selectedArticle?.content ?? "No Title Found")
                .font(.subheadline)
                .foregroundStyle(Color.primary)
                .padding([.horizontal])
        }
    }
}

#Preview {
    CommunityArticleDetailView(image: "medi6", descriptionText: "Description", titleText: "Title", selectedArticle: .constant(CommunityArticle(kind: "ok", id: 1, title: "ok", content: "ok", imageName: "medi2")))
}
