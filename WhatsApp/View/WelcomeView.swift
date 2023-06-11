//
//  WelcomeView.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()
            
            NavigationLink(destination:
                    LoginView()) {
                Image("welcomeLogo")
                    .padding(.bottom, 30.0)
            }
            
            Text("Welcome to WhatsApp")
                .font(.title)
                .bold()
            
            HStack {
                Text("Read our")
                    .foregroundColor(.gray)
                
                Button("Privacy Policy."){}
                
                Text("\"Tap Agree & Continue\"")
                    .foregroundColor(.gray)

            }.padding(.top, 1.0) .font(.system(size: 14))
            
            HStack {
                Text("to accept the ")
                .foregroundColor(.gray)

                Button("Terms of Service."){}
                
            } .font(.system(size: 14))
            
            Spacer()
            
            
            
             // VStack {
                    Button("Agree & Continue"){}
               // }
            
           
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
