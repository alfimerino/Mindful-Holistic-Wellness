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
    let description: String
    let cancelled: Bool

    static var beachSideEvent: Event {
        return Event(id: 0, time: "10:30 AM - 11:30 AM", title: "Beachside Meditation and Reiki", date: "Tue, November 14", location: "Beachcomber Hotel", address: "1000 Colins Ave Miami, FL 30001", description: "Join Aurora, @the_mindful_ot for a grounding evening of meditation and energy healing. Allow yourself to be guided through visualizations and breath-work while receiving the benefits of this ancient practice. Offering will be held on the lawn, under the stars. In case of rain, students will be fully refunded, minus any eventbrite fees if purchased through eventbrite. Please bring:Bring a large towel and or blanket and support for the head. Feel free to bring anything that will make it a cozy experience.To avoid eventbrite fees, pay in cash day of OR zelle payment Info@wellnessyot.com. Include your full name and date of event in the comments. Parking: Valet parking $5.", cancelled: false)
    }

    static func sampleEvents() -> [Event] {
        return [
            Event(id: 99, time: "6:00 PM", title: "Oceanview Rooftop Yoga + Live Music", date: "November 7", location: "Pier 6 Rooftop", address: "200 North Ocean Boulevard Pompano Beach, FL 33062", description: "Event desc", cancelled: false)
        ]
    }
}

extension Event: Decodable {
    private enum CodingKeys: String, CodingKey {
        case id, title, event_date, event_time, venue_name, venue_location, event_description, cancelled
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        title = try values.decode(String.self, forKey: .title)
        date = try values.decode(String.self, forKey: .event_date)
        time = try values.decode(String.self, forKey: .event_time)
        location = try values.decode(String.self, forKey: .venue_name)
        address = try values.decode(String.self, forKey: .venue_location)
        description = try values.decode(String.self, forKey: .event_description)
        cancelled = try values.decode(Bool.self, forKey: .cancelled)
    }
}


