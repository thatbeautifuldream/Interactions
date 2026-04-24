//
//  ContentView.swift
//  Interactions
//
//  Created by Milind Mishra on 23/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                PasteButton()

                LikeButton()
            }
            .padding(.vertical, 32)
        }
    }
}

#Preview {
    ContentView().frame(width: 400, height: 400)
}
