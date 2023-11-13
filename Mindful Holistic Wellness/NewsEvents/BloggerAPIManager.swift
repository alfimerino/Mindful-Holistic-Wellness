//
//  BloggerAPIManager.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/7/23.
//

import Foundation

class BloggerAPIManager {
    let apiKey = "AIzaSyAKHGS-GYh0GZJe6elIxltbWTmqJRbqJ3M"

    func fetchData(completion: @escaping (Post?, Error?) -> Void) {
        guard let url = URL(string: "https://www.googleapis.com/blogger/v3/blogs/3130942168824347793/posts?fetchImages=true&key=\(apiKey)") else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(nil, error)
                return
            }
            
            if let data = data {
                do {
                    let posts = try JSONDecoder().decode(Post.self, from: data)
                    completion(posts, nil)
                } catch {
                    completion(nil, error)
                }
            }
        }.resume()

    }

    func fetchBlog(completion: @escaping (Blogger?, Error?) -> Void) {
        let urlString = "https://www.googleapis.com/blogger/v3/blogs/3130942168824347793/posts?fetchImages=true&key=\(apiKey)"

        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    print(data.description)
                    do {
                        let jsonData = data
                           let decoder = JSONDecoder()
                           let postList = try decoder.decode(Blogger.self, from: jsonData)
                        print((postList.items.first?.title ?? "No title found") + "THis is the kind")
                    } catch {
                        print("An Error Occurred: \(error)")
                        completion(nil, error)
                    }
                } else if let error = error {
                    print("Error fetching Blog: \(error)")
                    completion(nil, error)
                }
            }.resume()
        }
    }
}

