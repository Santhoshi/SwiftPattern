//
//  BindingMockView.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru on 12/19/24.
//

import SwiftUI

struct BindingMockView: View {
    @State private var blueCounter = 1
    @State private var greenCounter = 1
    @State private var redCounter = 1
    
    var body: some View {
        VStack{
            Text("\(blueCounter + greenCounter + redCounter)")
                .font(.system(size: 220,weight: .bold, design: .rounded))
            HStack{
                CounterButton(counter: $blueCounter, color: .blue)
                CounterButton(counter: $greenCounter, color: .green)
                CounterButton(counter: $redCounter, color: .red)
            }
        }
        
    }
}

#Preview {
    BindingMockView()
}
struct CounterButton: View{
    @Binding var counter: Int
    var color: Color
    
    var body: some View{
        Button {
            counter += 1
        } label: {
            Circle()
                .frame(width:120, height: 120)
                .foregroundColor(color)
                .overlay (
                    Text("\(counter)")
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    
                )
        }

    }
    
}
