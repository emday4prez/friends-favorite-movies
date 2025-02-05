//
//  ContentView.swift
//  FriendsFavoriteMovies
//

//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Friends", systemImage: "person.and.person"){
                FriendList()
            }
            Tab("Movies", systemImage: "film.stack"){
                Text("Movies")
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
