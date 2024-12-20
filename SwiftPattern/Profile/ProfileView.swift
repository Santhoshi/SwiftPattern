//
//  ProfileView.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru on 12/12/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView{
            VStack{
                CardView(title: "Employee Profile"){
                    HStack{
                        Image(systemName: "person.circle")
                            .font(.largeTitle)
                        VStack(alignment:.leading){
                            Text("Mitchell Sorano")
                                .font(.title.weight(.medium))
                            Text("IT Department")
                        }
                        Spacer()
                    }
                }
                CardView(title: "Expenses") {
                    LabeledContent("Flight", value: 580, format: .currency(code: "USD"))
                    LabeledContent("Hotel", value: 1600, format: .currency(code: "USD"))
                    LabeledContent("Meals", value: 500, format: .currency(code: "USD"))
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}

