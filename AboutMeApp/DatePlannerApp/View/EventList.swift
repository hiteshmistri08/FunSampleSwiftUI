//
//  EventList.swift
//  DatePlannerApp
//
//  Created by Hitesh on 25/01/25.
//

import SwiftUI

struct EventList: View {
    @EnvironmentObject var eventData: EventData
    @State private var isAddingNewEvent: Bool = false
    @State private var newEvent = Event()
    
    var body: some View {
        List {
            ForEach(Period.allCases) { period in
                if !eventData.sortedEvents(period: period).isEmpty {
                    Section(content: {
                        ForEach(eventData.sortedEvents(period: period)) { $event in
                            NavigationLink {
                                EmptyView()
                            } label: {
                                EventRow(event: event)
                            }
                            .swipeActions {
                                Button(role: .destructive) {
                                    eventData.delete(event)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                        }
                    }, header: {
                        Text(period.name)
                            .font(.callout)
                            .foregroundColor(.secondary)
                            .fontWeight(.bold)
                    })
                }
            }
        }
        .navigationTitle("Data Planner")
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList()
    }
}
