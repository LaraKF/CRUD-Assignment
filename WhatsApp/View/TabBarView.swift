//
//  TabBarView.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Status()
                .tabItem {
                    Image(systemName: "network")
                    Text("Status")
                }
            Calls()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Calls")
                }
            ChatPage()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Communities")
                }
            Chats()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                    Text("Chats")
                }
            Settings()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}
