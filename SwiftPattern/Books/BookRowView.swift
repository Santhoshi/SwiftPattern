//
//  BookRowView.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru on 12/12/24.
//

import SwiftUI

struct BookRowView: View {
    
    let bookName: String
    
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "book.pages")
                    .padding()
                Text(bookName)
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

#Preview {
    BookRowView(bookName: "My preview title")
}
