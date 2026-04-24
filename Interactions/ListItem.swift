//
//  ListItem.swift
//  Interactions
//
//  Created by Milind Mishra on 24/04/26.
//

import SwiftUI

enum PetKind {
    case cat, dog, hare, fish, bird

    var icon: String {
        switch self {
        case .cat: "cat.fill"
        case .dog: "dog.fill"
        case .hare: "hare.fill"
        case .fish: "fish.fill"
        case .bird: "bird.fill"
        }
    }
}

struct Pet: Identifiable {
    let id = UUID()
    let name: String
    let kind: PetKind
    let trick: String
}

struct ListItem: View {
    @State private var pets: [Pet] = [
        Pet(name: "Whiskers", kind: .cat, trick: "Tightrope Walking"),
        Pet(name: "Buddy", kind: .dog, trick: "Catch Frisbee"),
        Pet(name: "Nibbles", kind: .hare, trick: "Jump Through Hoops"),
        Pet(name: "Goldie", kind: .fish, trick: "Bubble Ring"),
        Pet(name: "Polly", kind: .bird, trick: "Mimic Voices"),
    ]

    var body: some View {
        Button("Add pet") {
            pets.append(
                Pet(name: "Toby", kind: .dog, trick: "WWDC Presenter")
            )
        }
        List(pets) { pet in
            HStack {
                Label(pet.name, systemImage: pet.kind.icon)

                Spacer()

                Text(pet.trick)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    ListItem()
}
