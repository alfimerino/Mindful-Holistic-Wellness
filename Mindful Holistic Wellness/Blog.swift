import Foundation

// MARK: - Blog
struct Blogger: Decodable {
    let kind: String
    let items: [Item]
}

struct Item: Decodable, Identifiable {
    let kind: String
    let id: String
    let title: String
    let postImages: [PostImage]

    private enum CodingKeys: String, CodingKey {
        case kind, id, title, postImages = "images"
    }
}

struct PostImage: Decodable {
    let url: String
}

struct Post: Decodable {
    let kind: String
    let items: [Item]
}
