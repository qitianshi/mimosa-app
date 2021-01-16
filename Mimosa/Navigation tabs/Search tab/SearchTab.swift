// SearchTab.swift

// Created on 31/12/20
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// The Search tab lets users search for formulas by their terms, name, category, and more.


import SwiftUI

struct SearchTab: View {
    
    @State var searchQuery: String = ""
    
    var body: some View {
        NavigationView {
        
            VStack {
                
                SearchBar(query: $searchQuery, placeholderText: "Formulas, categories, terms, and more")
                    .padding(.horizontal, -SearchBar.DefaultPadding.horizontal)
                    .padding(.vertical, -SearchBar.DefaultPadding.vertical)
                    .padding(.horizontal)
                
                ScrollView {
                    ST_Recents()
                        .padding()
                }
                    
            }
            .navigationTitle("Search")
        
        }
    }
    
}

struct SearchTab_Previews: PreviewProvider {
    static var previews: some View {
        SearchTab()
    }
}
