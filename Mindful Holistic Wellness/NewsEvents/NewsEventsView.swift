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
    @State private var imageLoaded = false
    private var imagesURLs: [String]?
    @State var loadedImages = [Image]()
    @State var presentSheet = false
    var body: some View {
            NavigationView {
                List(blogViewModel.itemsList) { list in
                    Section {

                        ForEach(list.postImages.indices, id: \.self) { index in
                            GeometryReader { geometry in
                                VStack(spacing: 30) {
                                    AsyncImage(url: URL(string: list.postImages[index].url)) { phase in
                                        switch phase {
                                        case .empty:
                                            ZStack {
                                                NewsEventCardView()
                                                ProgressView()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(height: geometry.size.height + 20)
                                            }
                                        case .success(let image):
                                            NewsEventCardView(image: image)
                                                .frame(height: geometry.size.height)
                                                .aspectRatio(contentMode: .fill)
                                                .onTapGesture {
                                                    presentSheet.toggle()
                                                }
                                        case .failure:
                                            Image(systemName: "photo")
                                                .frame(height: geometry.size.height + 100)
                                        @unknown default:
                                            EmptyView()
                                        }
                                    }
                                    Spacer()
                                }
                                .listRowInsets(EdgeInsets())
                            }
                            .frame(height: 300) // Set a fixed height for the row
                        }
                    }
                    .navigationTitle("Latest News & Events")
                }
                .listStyle(.insetGrouped)
                .onAppear {
                    blogViewModel.fetchData()
                    if let posts = blogViewModel.posts {
                        items = posts.items
                    }
                }
            }
        }

    private func saveImage(_ image: Image) {
        self.loadedImages.append(image)
    }
}

#Preview {
    NewsEventsView()
}
