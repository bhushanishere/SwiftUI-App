//
//  SwiftUI_AppApp.swift
//  SwiftUI-App
//
//  Created by Bhushan  Borse on 08/08/23.
//

import SwiftUI

@main
struct SwiftUI_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
