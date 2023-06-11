//
//  SettingsView.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView{
            Form{

                NavigationLink(destination: Profile()){
                    Section(){
                        HStack{
                            Image("lara")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment:.leading){
                                Text("Lara").font(.headline)
                                Text("Busy").font(.subheadline)
                            }
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                }

                Section{
                    NavigationLink(destination: Profile()){
                        HStack(spacing: 20){
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.yellow)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            VStack{
                                Text("Starred Messages").font(.callout)
                            }
                        }
                    }
                    NavigationLink(destination: Profile()){
                        HStack(spacing: 20){
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            VStack{
                                Text("WhatsApp Web/Desktop").font(.callout)
                            }
                        }
                    }
                }

                Section{
                    NavigationLink(destination: Profile()){
                        HStack(spacing: 20){
                            Image(systemName: "key.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            VStack{
                                Text("Account").font(.callout)
                            }
                        }
                    }
                    NavigationLink(destination: Profile()){
                        HStack(spacing: 20){
                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            VStack{
                                Text("Chats").font(.callout)
                            }
                        }
                    }
                    NavigationLink(destination: Profile()){
                        HStack(spacing: 20){
                            Image(systemName: "bell.badge")
                                .frame(width: 35, height: 35)
                                .background(Color.red)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            VStack{
                                Text("Notifications").font(.callout)
                            }
                        }
                    }
                    NavigationLink(destination: Profile()){
                        HStack(spacing: 20){
                            Image(systemName: "arrow.up.arrow.down")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            VStack{
                                Text("Data and Storage Usage").font(.callout)
                            }
                        }
                    }
                }

                Section{
                    NavigationLink(destination: Profile()){
                        HStack(spacing: 20){
                            Image(systemName: "info")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            VStack{
                                Text("Help").font(.callout)
                            }
                        }
                    }
                    NavigationLink(destination: Profile()){
                        HStack(spacing: 20){
                            Image(systemName: "heart.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.red)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            VStack{
                                Text("Tell a Friend").font(.callout)
                            }
                        }
                    }
                }
            }.navigationTitle("Settings")
        }
    }
}
