//
//  weather_appApp.swift
//  weather_app
//
//  Created by Anastasia Tyutinova on 13/8/2568 BE.
//

import SwiftUI

@main
struct weather_appApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
