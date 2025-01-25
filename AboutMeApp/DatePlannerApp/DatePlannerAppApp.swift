//
//  DatePlannerAppApp.swift
//  DatePlannerApp
//
//  Created by Hitesh on 20/01/25.
//

import SwiftUI

@main
struct DatePlannerAppApp: App {
    @StateObject private var eventData = EventData()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                EventList()
                Text("Select an Event")
                    .foregroundStyle(.secondary)
            }
            .environmentObject(eventData)
        }
    }
}
