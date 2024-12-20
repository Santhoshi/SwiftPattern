//
//  Protocol_Demo.swift
//  SwiftPattern
//
//  Created by Santhoshi Guduru
//

import SwiftUI


protocol PersonProtocol{
    var firstName: String { get set }
    var lastName: String { get set }
    
    func getFullName() -> String
}

struct Developer: PersonProtocol{
    var firstName: String
    var lastName: String
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
}
class Student: PersonProtocol{
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func getFullName() -> String {
        return firstName + ", " + lastName
    }
    
    
}
struct ProtocolDemo: View {
    //private var dev = Developer(firstName: "Santhoshi", lastName: "Guduru")
    var developer: PersonProtocol
    var student: PersonProtocol
    var body: some View {
        VStack(spacing: 20){
            HeaderView("Protocols", subtitle: "Introduction", desc: "Protocols allow you to define a blueprint of properties and functions. Then, you can create new structs and classes that conform or implement the protocol's properties and function.")
            Text(developer.getFullName())
            Text(student.getFullName())
        }
    }
}

struct ProtocolDemo_Previews: PreviewProvider{
    static var previews: some View{
        ProtocolDemo(
            developer: Developer(firstName: "Din", lastName: "Djarin"),
            student: Student(firstName: "Grogu", lastName: "Mando")
        )
    }
    
}
