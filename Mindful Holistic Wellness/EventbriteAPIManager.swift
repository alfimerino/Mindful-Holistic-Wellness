//import Foundation
//
//class EventbriteAPIManager {
//    let apiKey = "422SZMNIWICHRBOYDKKE"
//
//    func fetchEvents(completion: @escaping ([Event]?, Error?) -> Void) {
//        let urlString = "https://www.eventbriteapi.com/v3/events/search/?token=\(apiKey)&q=swift"
//
//        if let url = URL(string: urlString) {
//            URLSession.shared.dataTask(with: url) { data, response, error in
//                if let data = data {
//                    do {
//                        let decoder = JSONDecoder()
//                        let eventsResponse = try decoder.decode(EventbriteResponse.self, from: data)
//                        completion(eventsResponse.events, nil)
//                    } catch {
//                        print("Error decoding JSON: \(error)")
//                        completion(nil, error)
//                    }
//                } else if let error = error {
//                    print("Error fetching events: \(error)")
//                    completion(nil, error)
//                }
//            }.resume()
//        }
//    }
//}
//
//struct EventbriteResponse: Codable {
//    let events: [Event]
//}
//
//struct Event: Codable {
//    // Define your event properties here based on Eventbrite API response
//    // For example: let name: String
//}
