//
//  ChatView.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//

import SwiftUI


struct Chats: View {
    var body: some View{
        NavigationView{
            Chat()
                .navigationTitle("Chats")
                .navigationBarItems(
                    leading:
                        HStack{
                            NavigationLink(
                                destination: Edit(),
                                label: {
                                    Text("Edit")
                                })
                        },
                    trailing:
                        HStack{
                            NavigationLink(
                                destination: Edit(),
                                label: {
                                    Image(systemName: "camera")
                                        .padding(.trailing, 10.0)
                                    Image(systemName: "square.and.pencil")
                                    
                                    
                                })
                        }
                )
        }
    }
}

struct Chat: View {
    var body: some View{
        List{
            // Chat 1
            VStack{
                HStack(spacing: 20){
                    Image("lara")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(.all, 5)
                    
                    
                    VStack(alignment: .leading){
                        Text("Lara").font(.headline)
                        HStack{
                            Text("Good morning!").font(.subheadline)
                        }
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("23:00")
                            .foregroundColor(.blue)
                            .font(.subheadline)
                            .padding(.trailing, 5)
                        ZStack {
                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 25, height: 25)
                                .cornerRadius(25)
                                .padding(.trailing, 5)
                            
                            Text("2")
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                                .font(.subheadline)
                        }
                    }
                }
            }
            
            // Chat 2
            VStack{
                
                
                    HStack(spacing: 20){
                        Image("cat")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .padding(.all, 5)
                        
//                        NavigationLink(destination: ChatPage()) {
                        VStack(alignment: .leading){
                            Text("Alhanouf").font(.headline)
                            HStack{
                                Text("كيف حالك؟").font(.subheadline)
                            }
                        }
                    
                    Spacer()
                        VStack(alignment: .trailing){
                            Text("21:14")
                                .foregroundColor(.blue)
                                .font(.subheadline)
                                .padding(.trailing, 5)
                                .padding(.bottom, 53)
                        //}
                    }
                }
            }
        }
    }
}

