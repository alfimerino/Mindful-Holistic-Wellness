//
//  MainView.swift
//  Mindful Holistic Wellness
//
//  Created by Alfredo Merino on 11/6/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationView {
                ScheduleView()
            }
            .tabItem {
                VStack {
                    Image(systemName: "calendar")

                    Text("Schedule")
                }
            }
            NavigationView {
                CommunityView()
            }
            .tabItem {
                VStack {
                    Image(systemName: "figure.2")

                    Text("Community")
                }
            }
            NavigationView {
                NewsEventsView()
            }
            .tabItem {
                VStack {
                    Image(systemName: "newspaper")

                    Text("News & Events")
                }
            }
            NavigationView {
                ContactUsView()
            }
            .tabItem {
                VStack {
                    Image(systemName: "person.fill")

                    Text("About")
                }
            }
        }
    }
}

#Preview {
    MainView()
}
