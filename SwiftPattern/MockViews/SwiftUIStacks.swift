//
//  SwiftUIStacks.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru on 12/19/24.
//

import SwiftUI

struct SwiftUIStacks: View {
    var body: some View {
        VStack {
            StackHeaderView()
            
            HStack(spacing: 15) {
                PricingView(title: "Basic", price: "$9", textColor: .white, backgroundColor: Color.purple)
                ZStack {
                    PricingView(title: "Pro", price: "$19", textColor: .black, backgroundColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                    Text("Best for designer")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                        .offset(x:0, y: 87)
                }
            }
            .padding(.horizontal)
            ZStack {
                PricingView(title: "Team", price: "$299", textColor: .white, backgroundColor: Color(red: 62/255, green: 63/255, blue: 70/255), icon: "wand.and.rays")
                    .padding()
                Text("Perfect for teams with 20 members")
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                    .offset(x: 0, y: 110)
                   
            }
            Spacer()
        }
    }
}

#Preview {
    SwiftUIStacks()
    //ExerciseStacksView()
}
struct ExerciseStacksView: View{
    var body: some View{
        ZStack {
            PricingView(title: "Basic", price: "$9", textColor: .white, backgroundColor: Color.purple, icon: "star.fill")
                .padding()
                .offset(x: 0, y: 180)
            PricingView(title: "Pro", price: "$19", textColor: .white, backgroundColor: Color(red: 255/255, green: 183/255, blue: 37/255), icon: "wand.and.rays")
                .padding()
                .scaleEffect(0.95)
            PricingView(title: "Team", price: "$299", textColor: .white, backgroundColor: Color(red: 62/255, green: 63/255, blue: 70/255), icon: "wand.and.rays")
                .padding()
                .scaleEffect(0.9)
                .offset(x: 0, y: -180)
        }
    }
}
struct StackHeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2){
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle,design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
        .padding()
    }
}

struct PricingView: View {
    
    var title: String
    var price: String
    var textColor: Color
    var backgroundColor: Color
    var icon: String?
    
    var body: some View {
        VStack{
            if let icon = icon{
                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            }
            Text(title)
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40,weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}
