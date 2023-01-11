//
//  myappApp.swift
//  myapp
//
//  Created by syed.sohail on 23/12/22.
//

import SwiftUI

@main
struct myappApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
