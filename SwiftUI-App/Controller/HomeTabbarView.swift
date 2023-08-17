//
//  HomeTabbarView.swift
//  SwiftUI-App
//
//  Created by Bhushan Borse on 11/08/23.
//

import SwiftUI

struct HomeTabbarView: View {
    var body: some View {
        TabView{
            DashboardView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            
            MessageView()
                .tabItem {
                    Text("Message")
                    Image(systemName: "message")
                }
            
            ProfileView()
                .tabItem{
                    Text("Profile")
                    Image(systemName: "pencil")
                }
        }
        .accentColor(.cyan)
    }
}

struct HomeTabbarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabbarView()
    }
}
