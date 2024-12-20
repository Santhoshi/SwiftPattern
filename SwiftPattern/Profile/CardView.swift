//
//  CardView.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru on 12/12/24.
//

import SwiftUI

struct CardView<Content: View>: View {
    
    let title: String
    @ViewBuilder var content: () -> Content
    
    
    var body: some View {
        GroupBox{
            Text(title)
                .font(.title.weight(.bold).width(.compressed))
            Divider()
            VStack(content: content )
        }
        .padding()
    }
}

#Preview {
    CardView(title: "Preview Title") {
        Text("Some Content")
        Text("Some Content line 2")
    }
}
