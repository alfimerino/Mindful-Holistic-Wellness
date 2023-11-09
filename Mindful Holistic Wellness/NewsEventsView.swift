//
//  NewsEventsView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/7/23.
//

import SwiftUI

struct NewsEventsView: View {
    @ObservedObject private var blogViewModel = BlogViewModel()
    @State private var items: [Item] = []
    private var imagesURLs: [String]?
    var body: some View {
        List(blogViewModel.itemsList) { list in
            Section {
                ForEach(list.postImages.indices, id: \.self) { index in
                    HStack {
                        Spacer()
                        AsyncImage(url: URL(string: list.postImages[index].url)) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()
                            case .success(let image):
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 400, height: 300, alignment: .center)
                            case .failure:
                                Image(systemName: "photo")
                            @unknown default:
                                EmptyView()
                            }
                        }
                        Spacer()
                    }
                }
            } header: {
                Text(list.title)
            }
            .navigationTitle("News")
        }.listStyle(.grouped)
            .onAppear {
                blogViewModel.fetchData()
                if let posts = blogViewModel.posts {
                    items = posts.items
                }
            }
    }
}

#Preview {
    NewsEventsView()
}
