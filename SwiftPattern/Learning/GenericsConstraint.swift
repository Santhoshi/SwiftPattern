//
//  GenericsConstraint.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru
//

import SwiftUI

struct GenericsConstraint: View {
    private var age1 =  25
    private var age2 = 45
    
    func getOldest<T: SignedInteger>(age1: T, age2: T) -> String{
        if age1 > age2{
            return "The first is older"
        } else if age1 == age2 {
            return "The ages are equal"
        }
        return "The second is older"
    }
    var body: some View {
        VStack(spacing: 20){
            HeaderView("Generic ", subtitle: "Constraints", desc: "Maybe you don't want a generic to be entirely generic. You can narrow down just how generic you want it to be with a ‘constraint'.")
            HStack(spacing: 40){
                Text("Age One: \(age1)")
                Text("Age Two: \(age2)")
            }
            Text (getOldest(age1: age1, age2: age2))
            
            DescView("Note: Constraints are usually protocols.")
        }
        .font(.title)
    }
}

#Preview {
    GenericsConstraint()
}
