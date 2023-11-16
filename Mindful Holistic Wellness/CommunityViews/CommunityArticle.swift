//
//  CommunityArticle.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/16/23.
//

import Foundation

struct CommunityArticle: Identifiable {

    let kind: String
    let id: Int
    let title: String
    let content: String

    static var sampleArticle: CommunityArticle {
        return CommunityArticle(kind: "article", id: 4, title: "The Healing Power of Aromatherapy: Nurturing the Mind and Body", content: "Aromatherapy, an ancient practice rooted in the use of aromatic essential oils, has gained modern popularity as a holistic approach to healing... Key Aspects of Aromatherapy 1. **Stress Relief:** Certain essential oils, such as lavender and chamomile, are known for their calming properties... Conclusion Aromatherapy offers a delightful and therapeutic way to nurture the mind and body...")
    }
}

extension CommunityArticle: Decodable {
    private enum CodingKeys: String, CodingKey {
        case kind, id, title, content
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        kind = try values.decode(String.self, forKey: .kind)
        id = try values.decode(Int.self, forKey: .id)
        title = try values.decode(String.self, forKey: .title)
        content = try values.decode(String.self, forKey: .content)
    }
}
