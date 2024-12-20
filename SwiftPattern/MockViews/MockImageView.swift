//
//  MockImageView.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru on 12/19/24.
//

import SwiftUI

struct MockImageView: View {
    var body: some View {
        Image("Paris")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
                Color.black
                    .opacity(0.4)
                    .overlay(
                        Text("Paris")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .frame(width: 200)
                    )
            )
            .overlay (
                Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveab le feast.\n\n- Ernest Hemingway")
                    .fontWeight(.heavy)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .opacity(0.8)
                    .padding(),
                alignment: .top
            )
        /*
        Image(systemName: "cloud.heavyrain")
            .font(.system(size: 100))
            .foregroundColor(.blue)
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
         */
    }
}

#Preview {
    MockImageView()
}
