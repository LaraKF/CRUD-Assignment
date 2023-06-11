//
//  ContentView.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//

import SwiftUI



struct Profile: View {
    var body: some View{
        Text("profile")
            .foregroundColor(.blue)
    }
}

struct Status: View {
    var body: some View{
//        VStack {
//            Text("WhatsApp Status")
//                .font(.title2)
//                .bold()
//            Spacer()
//
//            Text("No recent updates to show right now.")
//            Spacer()
//        } .foregroundColor(.blue)
//
        
        VStack {
            Image("lara")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(.bottom, 10)
            
            Text("I'm feeling good today!")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            Text("Posted 3 hours ago")
                .foregroundColor(.gray)
        }
        .padding(.horizontal, 20)
        
    } 
}

struct Calls: View {
    var body: some View{
        Text("Calls")
            .foregroundColor(.blue)
    }
}

struct Communities: View {
    var body: some View{
        Text("Start a Community")
            .foregroundColor(.blue)
    }
}

struct Edit: View {
    var body: some View{
        Text("Contoh edit")
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
