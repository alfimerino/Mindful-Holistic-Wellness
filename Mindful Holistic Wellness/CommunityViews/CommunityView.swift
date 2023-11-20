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
            ForEach(articles) { article in
                HStack(alignment: .center) {
                    Spacer()
                    let randomImage = communityViewModel.imageNames.randomElement()
                    CardView(title: article.title, description: article.content, imageName: randomImage ?? "Maria")
                        .listRowInsets(EdgeInsets()) // Remove default list row insets
                        .onTapGesture {
                            showingSheet.toggle()
                        }.fullScreenCover(isPresented: $showingSheet, content: {
                            CommunityArticleDetailView(image: randomImage ?? "medi3", descriptionText: article.content, titleText: article.title)
                        })
                    Spacer()
                }.frame(height: 550)
            }.padding(.bottom)
                .navigationTitle("Community & Resources")
        }.listStyle(.grouped).background(.primary).onAppear {
            print(articles.first?.content ?? "No article")
        }
    }
}

#Preview {
    CommunityView()
}
