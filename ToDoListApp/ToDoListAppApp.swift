//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by رنيم القرني on 04/09/1445 AH.
//

import SwiftUI

@main
struct ToDoListAppApp: App {
    @StateObject var tasksControll = DataControllar()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, tasksControll.container.viewContext)
        }
    }
}
