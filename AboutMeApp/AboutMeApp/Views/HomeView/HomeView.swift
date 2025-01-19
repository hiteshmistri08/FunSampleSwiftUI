//
//  HomeView.swift
//  AboutMeApp
//
//  Created by Hitesh on 18/01/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Image(systemName: "placeholdertext.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40)
            
            Text(information.name)
                .font(.title)
        }
        .padding()
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
