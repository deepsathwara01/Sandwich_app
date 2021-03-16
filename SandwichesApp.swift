//
//  SandwichesApp.swift
//  Shared
//
//  Created by Deep Sathwara on 2020-08-06.
//

import SwiftUI

@main
struct SandwichesApp: App {
    @StateObject private var store = SandwichStore()

    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
            
        }
    }
}
