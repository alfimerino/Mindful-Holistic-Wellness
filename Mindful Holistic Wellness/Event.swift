//
//  Event.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/6/23.
//

import SwiftUI

struct Event: Identifiable {
    let id: Int
    let time: String
    let title: String
    let date: String
    let location: String
    let address: String
    let cancelled: Bool

    static func sampleEvents() -> [Event] {
        return [
            Event(id: 99, time: "6:00 PM", title: "Oceanview Rooftop Yoga + Live Music", date: "November 7", location: "Pier 6 Rooftop", address: "200 North Ocean Boulevard Pompano Beach, FL 33062", cancelled: false)
        ]
    }
}

extension Event: Decodable {
    private enum CodingKeys: String, CodingKey {
        case id, title, event_date, event_time, venue_name, venue_location, cancelled
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        title = try values.decode(String.self, forKey: .title)
        date = try values.decode(String.self, forKey: .event_date)
        time = try values.decode(String.self, forKey: .event_time)
        location = try values.decode(String.self, forKey: .venue_name)
        address = try values.decode(String.self, forKey: .venue_location)
        cancelled = try values.decode(Bool.self, forKey: .cancelled)
    }
}


