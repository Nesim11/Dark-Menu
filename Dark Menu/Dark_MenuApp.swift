//
//  Dark_MenuApp.swift
//  Dark Menu
//
//  Created by Nesim Alma on 10.07.2021.
//

import SwiftUI

@main
struct Dark_MenuApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            TabView {
            NavigationView {
                
               DarkMenuView()
            }.tabItem {
               Image(systemName: "homekit")
                Text("home")
             }
                Text("Liked")
                    .tabItem {
                        Image(systemName: "heart")
                        Text("Liked")
                    }
                Text("Reels")
                    .tabItem {
                        Image(systemName: "video")
                        Text("Reels")
                        
                    }
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                    .environment(\.colorScheme, isDarkMode ? .dark : .light)
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }.accentColor(.primary)
        }
    }
}
