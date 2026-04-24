//
//  LikeButton.swift
//  Interactions
//
//  Created by Milind Mishra on 24/04/26.
//


import SwiftUI

struct LikeButton: View {
    @State private var isLiked = false

    var body: some View {
        Button {
            withAnimation(.spring(duration: 0.3, bounce: 0.25)) {
                isLiked.toggle()
            }
        } label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .font(.title2)
                .foregroundStyle(isLiked ? .red : .secondary)
                .contentTransition(.symbolEffect(.replace.byLayer))
        }
        .buttonStyle(LikeButtonStyle(isLiked: isLiked))
        .labelStyle(.iconOnly)
        .sensoryFeedback(.impact(weight: .light), trigger: isLiked)
        .accessibilityLabel(isLiked ? "Unlike" : "Like")
    }
}

struct LikeButtonStyle: ButtonStyle {
    var isLiked: Bool

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.75 : 1.0)
            .animation(animation(for: configuration), value: configuration.isPressed)
    }

    private func animation(for configuration: Configuration) -> Animation {
        if configuration.isPressed {
            return .easeOut(duration: 0.1)
        } else if isLiked {
            return .spring(duration: 0.3, bounce: 0.4)
        } else {
            return .spring(duration: 0.2, bounce: 0.15)
        }
    }
}

#Preview {
    LikeButton()
        .frame(width: 400, height: 400)
}
