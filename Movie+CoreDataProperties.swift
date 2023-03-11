//
//  Movie+CoreDataProperties.swift
//  CoreDataX
//
//  Created by Yashraj jadhav on 11/03/23.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String
    @NSManaged public var director: String
    @NSManaged public var year: Int16
    
    public var wrappedTitle : String {
        title ?? "Unknown Title"
    }


}

extension Movie : Identifiable {

}

//@NSManaged is not a property wrapper – this is much older than property wrappers in SwiftUI. Instead, this reveals a little of how Core Data works internally: rather than those values actually existing as properties in the class, they are really just there to read and write from a dictionary that Core Data uses to store its information. When we read or write the value of a property that is @NSManaged, Core Data catches that and handles it internally – it’s far from a simple Swift string.
