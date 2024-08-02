//
//  TabBar.swift
//  Domus
//
//  Created by Tanish Rana on 01/05/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "house")
                        .foregroundColor(.black)
                }
            
            ShortlistView()
                .tabItem {
                    Label("Shortlisted", systemImage: "bookmark")
                        .foregroundColor(.black)
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                        .foregroundColor(.black)
                }
        }
    }
}

#Preview {
    TabBar()
}
