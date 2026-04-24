//
//  ContentView.swift
//  Interactions
//
//  Created by Milind Mishra on 23/04/26.
//

import SwiftUI

struct ContentView: View {
    @State var isToggled = false

    var body: some View {
        VStack(spacing: 40) {
            ZStack {
                if isToggled {
                    Text("Paste")
                        .font(.system(size: 16, design: .rounded))
                } else {
                    Image(systemName: "arrow.right")
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(.blue, in: Capsule(style: .continuous))
            .foregroundStyle(.white)
            .onTapGesture {
                withAnimation(.snappy(duration: 0.36, extraBounce: 0.24)) {
                    isToggled.toggle()
                }
            }

            LikeButton()
        }
    }
}

#Preview {
    ContentView().frame(width: 400, height: 400)
}
