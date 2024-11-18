//
//  StoryBookView.swift
//  StoryBookGameApp
//
//  Created by Kamelia Toteva on 14.11.24.
//
import SwiftUI

struct StoryBook {
    let scenes: [StoryBookScene]
    
    subscript(_ sceneIndex: Int) -> StoryBookScene {
        return scenes[sceneIndex]
    }
}

struct StoryBookView: View {
    var body: some View {
        NavigationStack {
            StoryBookSceneView(storyBook: storyBook, sceneIndex: 0)
        }
    }
}

struct StoryBook_Previews: PreviewProvider {
    static var previews: some View {
        StoryBookView()
    }
}
