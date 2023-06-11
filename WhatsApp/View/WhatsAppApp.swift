//
//  WhatsAppApp.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//

import SwiftUI
import Firebase

@main
struct WhatsAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            WhatssAppView()
        }
    }
}
