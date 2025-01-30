//
//  EatAndNoteApp.swift
//  EatAndNote
//
//  Created by MAC923_40 on 16/2/2566 BE.
//

import SwiftUI

@main
struct EatAndNoteApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            LaunchScreen()
                .environment(\.managedObjectContext,dataController.container.viewContext)
        }
    }
}
