//
//  BooksViewModel.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru
//

import Foundation

@Observable
class BooksViewModel{
    var data : [Book] = []
    
    func fetch(){
        // Make an API Call
    }
    
}

class MockDataModel: BooksViewModel{
    override func fetch() {
        data = [Book(name: "SwiftUI Views Mastery"),
                Book(name: "Pro SwiftUI"),
                Book(name: "Combine Mastery in SwiftUI"),
                Book(name: "SwiftData Mastery in SwiftUI"),
                Book(name: "Core Data Mastery in SwiftU")]
    }
}
