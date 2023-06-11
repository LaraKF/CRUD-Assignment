//
//  MessageField.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//

import SwiftUI

struct MessageField: View {
    @EnvironmentObject var messagesManager: MessagesManager
    @State private var message = ""
    
    var body: some View {
        HStack{
            
//            Image(systemName: "plus")
//                .resizable()
//                .foregroundColor(.blue)
//                .frame(width: 25.0, height: 25.0)
//
//                .padding()
            
            HStack {

                CustomTextField(placeholder: Text("Enter your message here"), text: $message)
                    .font(.system(size: 14))
                  
                
                Button {
                    messagesManager.sendMessage(text: message)
                    message = ""
                } label: {
                    Image(systemName: "square.split.bottomrightquarter")
                        .resizable()
                        .foregroundColor(.blue)
//                        .padding(10)
                        .frame(width: 20.0, height: 20.0)
                }
                
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(Color("Color2"))
            .cornerRadius(50)
            .padding()
            
            
            Image(systemName: "camera")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 20.0, height: 20.0)
            
            Image(systemName: "mic")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 20.0, height: 20.0)
            
                .padding()
            
        }
        
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
    }
}

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}
    
    var body: some View {
        ZStack{
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
