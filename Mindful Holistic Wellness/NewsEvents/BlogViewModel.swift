//
//  BlogViewModel.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/7/23.
//

import SwiftUI
import Combine

final class BlogViewModel: NSObject, ObservableObject {
    private let apiManager = BloggerAPIManager()

    @Published var posts: Post?
    var itemsList: [Item] = []
    var imageList: [Image] = []

    func fetchData() {
        apiManager.fetchData { [weak self] posts, error in
            DispatchQueue.main.async {
                if let error = error {
                    print("Error: \(error)")
                } else if let posts = posts {
                    self?.posts = posts
                    self?.itemsList = posts.items
                }
            }
        }
    }
}
