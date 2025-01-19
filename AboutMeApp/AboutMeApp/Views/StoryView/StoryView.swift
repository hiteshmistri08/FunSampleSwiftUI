//
//  StoryView.swift
//  AboutMeApp
//
//  Created by Hitesh on 18/01/25.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        VStack {
            Text("My Story")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            NavigationStack {
                StoryPageView(story: story, pageIndex: 0)
            }
        }
        .navigationTitle("My Story")
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
