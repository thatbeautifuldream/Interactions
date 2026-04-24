//
//  PasteButton.swift
//  Interactions
//
//  Created by Milind Mishra on 24/04/26.
//

import SwiftUI

struct PasteButton: View {
    @State private var isToggled = false

    var body: some View {
        ZStack {
            if isToggled {
                Text("Paste")
                    .font(.system(size: 16, design: .rounded))
                    .fixedSize()
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
    }
}

#Preview {
    PasteButton()
}