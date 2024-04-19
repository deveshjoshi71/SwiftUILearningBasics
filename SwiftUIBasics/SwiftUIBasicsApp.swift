//
//  SwiftUIBasicsApp.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 19/04/24.
//

import SwiftUI

@main
struct SwiftUIBasicsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(count: 5, fruit: .Apples)
        }
    }
}
