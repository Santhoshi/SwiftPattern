//
//  GenericsBootcamp.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru
//

import SwiftUI

struct GenericsBootcamp: View {
    @State private var useInt = false
    @State private var ageText = ""
    
    func getAgeText<T>(value: T) -> String {
        return String("Age is \(value)")
    }
    
    var body: some View {
        VStack(spacing: 20){
            HeaderView("Generics", subtitle: "Introduction", desc: "A generic variable allows you to create a type placeholder that can be set to any type the developer wants to use.")
            Group{
                Toggle("Use Int", isOn: $useInt)
                Button("Show age") {
                    if useInt{
                        ageText = getAgeText(value: 38)
                    } else {
                        ageText = getAgeText(value: "28")
                    }
                }
                Text(ageText)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    GenericsBootcamp()
}
