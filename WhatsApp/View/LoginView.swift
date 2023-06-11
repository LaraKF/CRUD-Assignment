//
//  SignIn.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//


import SwiftUI

@MainActor
final class LogIn: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func logIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        Task {
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print(returnedUserData)
            } catch {
                print("Error: \(error)")
                
            }
        }
    }
}

struct LoginView: View {
    @StateObject private var viewModel = LogIn()
    
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                VStack {
                    
                    
                    Image("welcomeLogo")
                        .padding(.bottom, 30.0)
                    
                }
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    TextField("Phone number or email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 45)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(0.5)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                    
                    
                    SecureField("Passwort", text: $viewModel.password)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 45)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(0.5)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                    
                }
                .padding()
                
                NavigationLink("Forgot password?", destination: {
                })
                .foregroundColor(.gray)
                
                
                .padding(.leading, 190)
                
                //                NavigationLink(destination: ContentView()) {
                
                //  ZStack {
                //                    NavigationLink(destination: ContentView()) {
                //                        Image("c1")
                //                            .padding(.leading, 120.0)
                //                    }
                
                Button("Log In") {
                    viewModel.logIn()
                }
                .foregroundColor(.white)
                .padding(.vertical)
                .frame(width: UIScreen.main.bounds.width - 45)
                .background(Color.green)
                .cornerRadius(8)
                .onTapGesture {
                }
                .autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(/*@START_MENU_TOKEN@*/.top, 10.0/*@END_MENU_TOKEN@*/)
                // }
                
                NavigationLink(destination: ContentView()) {
                    Text("login")
                }
            }
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
