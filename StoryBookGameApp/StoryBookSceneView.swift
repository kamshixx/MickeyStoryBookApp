//
//  StoryBookSceneView.swift
//  StoryBookGameApp
//
//  Created by Kamelia Toteva on 14.11.24.
//
import SwiftUI

struct Action {
    let description: String
    let next: Int
}

struct StoryBookScene {
    let id: String
    let title: String
    let text: String

    let actions: [Action]

    init(_ id: String, _ title: String, _ text: String, actions: [Action]) {
        self.id = id
        self.title = title
        self.text = text
        self.actions = actions
    }
}

struct StoryBookSceneView: View {
    let storyBook: StoryBook
    let sceneIndex: Int

    var body: some View {
        ZStack {
            Image("forestbackground")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Text(storyBook[sceneIndex].text)
                        .frame(width: screenWidthMax * 0.9, height: screenHeightMax * 0.2, alignment: .center)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                ForEach(storyBook[sceneIndex].actions, id: \Action.description) { action in
                    NavigationLink(destination: StoryBookSceneView(storyBook: storyBook, sceneIndex: action.next)) {
                            Text(action.description)
                            .multilineTextAlignment(.center)
                            .frame(width: screenWidthMax * 0.9, height: screenHeightMax * 0.1,
                                   alignment: .center)
                            .padding()
                            .background(Color.gray.opacity(0.5))
                            .foregroundStyle(.white)
                            .cornerRadius(8)
                        
                    }
                }
            }
            .padding()
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(storyBook[sceneIndex].title)
                    .frame(width: screenWidthMax * 0.9, height: screenHeightMax * 0.1,
                           alignment: .center)
                    .multilineTextAlignment(.center)
                    .font(.system(.headline))
                    .foregroundStyle(.white)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct StoryBookScene_Previews: PreviewProvider {
    static var previews: some View {
        StoryBookSceneView(storyBook: storyBook, sceneIndex: 8)
    }
}
