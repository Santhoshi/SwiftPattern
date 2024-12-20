//
//  BooksView.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru
//

import SwiftUI

struct BooksView: View {
    @State private var vm = MockDataModel()
    var body: some View {
        List{
            Section{
                ForEach(vm.data){ data in
                    BookRowView(bookName: data.name)
                    .listRowSeparator(.hidden)
                }
            }
            header:{
                sectionHeaderView
            }
        }
        .headerProminence(.increased)
        .listStyle(.plain)
        .onAppear(){
            vm.fetch()
        }
    }
    
    var sectionHeaderView: some View{
        HStack{
            Label("Books (\(vm.data.count))", systemImage: "books.vertical.fill")
            Spacer()
            Button("Add", systemImage: "plus"){
                
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    BooksView()
}
