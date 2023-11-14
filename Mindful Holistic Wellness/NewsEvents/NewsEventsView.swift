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
        List(blogViewModel.itemsList) { list in
            Section {
                ForEach(list.postImages.indices, id: \.self) { index in
                    HStack {
                        AsyncImage(url: URL(string: list.postImages[index].url)) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 150, alignment: .leading)
                            case .success(let image):
                                HStack(alignment: .top, spacing: 12) {
                                    image.resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 150, alignment: .leading)
                                    Text(list.title).truncationMode(.tail).lineLimit(6)
                                        .sheet(isPresented: $presentSheet) {
                                            NewsEventsDetailView(title: list.title, image: image)
                                        }
                                }
                            case .failure:
                                Image(systemName: "photo")
                            @unknown default:
                                EmptyView()
                            }
                        }
                        Spacer()
                    }.onTapGesture {
                        presentSheet.toggle()
                    }
                }
            }
            .navigationTitle("Latest News & Events")
        }.listStyle(.grouped)
            .onAppear {
                blogViewModel.fetchData()
                if let posts = blogViewModel.posts {
                    items = posts.items
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
