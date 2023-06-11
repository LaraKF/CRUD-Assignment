//
//  Message.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
