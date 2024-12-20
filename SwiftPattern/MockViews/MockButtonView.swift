//
//  MockButtonView.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru on 12/19/24.
//

import SwiftUI

struct MockButtonView: View {
    @State private var rotate = false
    var body: some View {
        VStack{
            Button{
                print("Share button tapped!!")
            }label: {
                Label(
                    title:{
                        Text("Share")
                            .fontWeight(.semibold)
                            .font(.title)
                    }, icon: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button{
                print("Edit button tapped!!")
            }label: {
                Label(
                    title:{
                        Text("Edit")
                            .fontWeight(.semibold)
                            .font(.title)
                    }, icon: {
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button{
                print("Delete button tapped!!")
            }label: {
                Label(
                    title:{
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }, icon: {
                        Image(systemName: "trash")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button{
                rotate.toggle()
            }label:{
                Image(systemName: "plus.circle.fill")
                    .font(.largeTitle)
                    .tint(.purple)
            }
            .rotationEffect(.degrees(rotate ? 45 : 0))
            .animation(.easeInOut(duration: 0.5), value: rotate)

        }
    }
}
struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View { configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("Dark Green"), Color("Light Green")]), startPoint: .leading, endPoint: .trailing)) .cornerRadius(40)
    }
}

#Preview {
    MockButtonView()
}
