//
//  ANATAforDREAMApp.swift
//  ANATAforDREAM
//
//  Created by MacBook Pro on 2021/02/28.
//

import SwiftUI
import Neumorphic

@main
struct ANATAforDREAMApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        // set color scheme
        Color.Neumorphic.colorSchemeType = .light
    }
}
