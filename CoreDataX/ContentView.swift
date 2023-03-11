//
//  ContentView.swift
//  CoreDataX
//
//  Created by Yashraj jadhav on 11/03/23.
//

import SwiftUI

struct ContentView: View {
  //  let students = [Student(name: "Harry Potter") , Student(name: "Hermonie Granger")]
    var body: some View {
        ContentViewX()
//        List(students,id: \.self) { student in
//            Text(student.name)
//        }
         //MARK: - We can make Student conform to Hashable because all its properties already conform to Hashable, so Swift will calculate the hash values of each property then combine them into one hash that represents the whole struct. Of course, if we end up with two students that have the same name we’ll hit problems, just like if we had an array of strings with two identical strings.
        
    }
    
}

 //MARK: -  Hashable is a bit like Codable: if we want to make a custom type conform to Hashable, then as long as everything it contains also conforms to Hashable then we don’t need to do any work. To demonstrate this, we could create a custom struct that conforms to Hashable rather than Identifiable, and use \.self to identify it

// if we create two Core Data objects with the same values, they’ll generate the same hash, and we’ll hit animation problems. However, Core Data does something really smart here: the objects it creates for us actually have a selection of other properties beyond those we defined in our data model, including one called the object ID – an identifier that is unique to that object, regardless of what properties it contains. These IDs are similar to UUID, although Core Data generates them sequentially as we create objects.

struct Student: Hashable {
    let name : String
    
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
