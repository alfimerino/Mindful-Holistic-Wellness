//
//  ScheduleViewModel.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/6/23.
//

import SwiftUI
import Combine

final class ScheduleViewModel: NSObject, ObservableObject {
    static let shared = ScheduleViewModel()
    @Published var events = Event.sampleEvents()

    var eventos: [Event]

    override private init() {
        let decoder = JSONDecoder()

        guard
            let plist = Bundle.main.url(forResource: "events", withExtension: "json"),
            let data = try? Data(contentsOf: plist),
            let eventos = try? decoder.decode([Event].self, from: data) else {
            fatalError("Cant find json")
        }

        self.eventos = eventos
        super.init()
    }
}
