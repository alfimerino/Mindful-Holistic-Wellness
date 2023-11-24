//
//  CommunityView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/15/23.
//

import SwiftUI

struct CommunityView: View {
    @ObservedObject private var communityViewModel = CommunityViewModel.shared
    private let articles = CommunityViewModel.shared.articles
    @State private var selectedArticle: CommunityArticle?
    @State private var showingSheet = false

    var body: some View {
        List() {
            ForEach(Array(articles.enumerated()), id: \.element.id) { index, article in
                VStack(alignment: .leading) {
                    Spacer()
                    let localArticle = article

                    CardView(title: localArticle.title, description: localArticle.content, imageName: localArticle.imageName)
                        .listRowInsets(EdgeInsets()) // Remove default list row insets
                        .onTapGesture {
                            selectedArticle = localArticle
                            showingSheet.toggle()
                        }.sheet(isPresented: $showingSheet, content: {
                            CommunityArticleDetailView(image: article.imageName, descriptionText: article.content, titleText: article.title, selectedArticle: $selectedArticle)
                        })
                    Spacer()
                }.frame(height: 550)
            }.padding(.bottom)
                .navigationTitle("Community & Resources")

        }.listStyle(.grouped).background(.primary)
    }
}

#Preview {
    CommunityView()
}
