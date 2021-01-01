// ContentView.swift
// Mimosa: Working title; non-working project.

// Created on 31/12/20
// Swift 5.0

// GNU General Public License v3.0

// The first view that is shown on app launch. Houses the main tabbed navigation view.


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            BrowseTab()
                .tabItem {
                    Image(systemName: "rectangle.grid.2x2.fill")
                    Text("Browse")
                }
            
            LibraryTab()
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Library")
                }
            
            SearchTab()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
