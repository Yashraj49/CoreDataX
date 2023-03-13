//
//  FetchRequestView.swift
//  CoreDataX
//
//  Created by Yashraj jadhav on 12/03/23.
//
import CoreData
import SwiftUI

struct FetchRequestView: View {
    @Environment(\.managedObjectContext) var moc
//    `%@‘ means “insert some data here”, and allows us to provide that data as a parameter to the predicate rather than inline.
    @FetchRequest(sortDescriptors: [] , predicate: NSPredicate(format: "name < %@", "F")) var ships: FetchedResults<Ship>
    
    var body: some View {
        VStack {
            List(ships,id:\.self) { ship in
                Text(ship.name ?? "Unknown name")
            }
           
            Button("Add Example") {
                let ship1 = Ship(context: moc)
                ship1.name = "Enterprise"
                ship1.universe = "Star Trek"
            
                let ship2 = Ship(context: moc)
                ship2.name = "Defiant"
                ship2.universe = "Star Trek"
                
                let ship3 = Ship(context: moc)
                ship3.name = "Millennium Falcon"
                ship3.universe = "Star Wars"

                let ship4 = Ship(context: moc)
                ship4.name = "Executor"
                ship4.universe = "Star Wars"
                
                try? moc.save()

            }
        }
    }
}

// When we use SwiftUI’s @FetchRequest property wrapper, we can provide an array of sort descriptors to control the ordering of results.
//we can also provide an NSPredicate to control which results should be shown. struct

struct FetchRequestView_Previews: PreviewProvider {
static var previews: some View {
        FetchRequestView()
    }
}
