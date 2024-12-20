//
//  ScrollViewCard.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru on 12/19/24.
//

import SwiftUI

struct ScrollViewCard: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("MONDAY, AUGUST 20")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text("Your Reading")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
        .padding([.top, .horizontal])
        ScrollView(.horizontal,showsIndicators: false){
            HStack {
                Group{
                    StackCardView(imageName: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                    StackCardView(imageName: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                    StackCardView(imageName: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                    StackCardView(imageName: "natural-language-api", category: "iOS", heading: "What's New in Natural language API ", author: "Sai Kambampati")
                }
                .frame(width:300)
            }
            Spacer()
        }
    }
}

#Preview("Horizontal Scroll") {
        ScrollViewCard()
}
#Preview("Vertical Scroll"){
    ScrollViewVertical()
}


struct ScrollViewVertical: View{
    var body: some View {
        ScrollView{
            HStack {
                VStack(alignment: .leading){
                    Text("MONDAY, AUGUST 20")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Your Reading")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                }
                Spacer()
            }
            .padding([.top, .horizontal])
            VStack{
                StackCardView(imageName: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                StackCardView(imageName: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                StackCardView(imageName: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                StackCardView(imageName: "natural-language-api", category: "iOS", heading: "What's New in Natural language API ", author: "Sai Kambampati")
            }
        }
    }
}
