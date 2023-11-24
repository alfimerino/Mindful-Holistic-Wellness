//
//  CommunityViewModel.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/16/23.
//

import Foundation
import Combine

final class CommunityViewModel: NSObject, ObservableObject {
    static let shared = CommunityViewModel()

    var articles: [CommunityArticle]

    override private init() {
        let decoder = JSONDecoder()

        guard let plist = Bundle.main.url(forResource: "communityArticles", withExtension: "json"),
              let data = try? Data(contentsOf: plist),
              let articles = try? decoder.decode([CommunityArticle].self, from: data) else {
            fatalError("Can't find articles json")
        }
        self.articles = articles
        super.init()
    }
}
