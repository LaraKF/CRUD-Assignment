//
//  WhatssAppView.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//

import SwiftUI

struct WhatssAppView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                NavigationLink(destination:
                     WelcomeView()) {
                    Image(systemName: "phone.circle.fill")
                        .resizable()
                        .foregroundColor(.green)
                        .frame(width: 60.0, height: 60.0)
                }
                
                Spacer()
                Text("from")
                    .foregroundColor(.gray)
                
                Text("Meta")
                    .foregroundColor(.green)
                    .font(.title3)
                    .bold()
            }
        }
    }
}

struct WhatssAppView_Previews: PreviewProvider {
    static var previews: some View {
        WhatssAppView()
    }
}
