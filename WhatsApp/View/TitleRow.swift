//
//  TitleRow.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//

import SwiftUI

struct TitleRow: View {
    var name = "Alhanouf"
    
    var body: some View {
        HStack {
            HStack(spacing: 20) {
                Image("cat")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            }
            
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "video")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 20.0, height: 20.0)
                .padding()
            Image(systemName: "phone")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 20.0, height: 20.0)
            
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
    }
}
