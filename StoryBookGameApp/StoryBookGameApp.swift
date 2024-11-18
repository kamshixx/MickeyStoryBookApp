//
//  StoryBookGameApp.swift
//  StoryBookGameApp
//
//  Created by Kamelia Toteva on 14.11.24.
//

import SwiftUI

let screenWidthMax = UIScreen.main.bounds.width
let screenHeightMax = UIScreen.main.bounds.height

@main
struct StoryBookGameApp: App {
    var body: some Scene {
        WindowGroup {
            StoryBookView()
        }
    }
}
