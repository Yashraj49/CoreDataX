//
//  CoreDataXApp.swift
//  CoreDataX
//
//  Created by Yashraj jadhav on 11/03/23.
//

import SwiftUI

@main
struct CoreDataXApp: App {
    @State private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
