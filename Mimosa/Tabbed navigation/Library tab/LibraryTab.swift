// LibraryTab.swift
// Mimosa: Working title; non-working project.

// Created on 31/12/20
// Swift 5.0

// GNU General Public License v3.0

// The Library tab houses the user's saved formulas and notes.


import SwiftUI

struct LibraryTab: View {
    
    // Content of each list row is stored in an array so they can be generated programmatically.
    private let LT_listItems = [LT_ListItem(imageName: "function",
                                            text: "Formulas",
                                            link: AnyView(LT_Formulas())),
                                LT_ListItem(imageName: "book.closed",
                                            text: "Fields",
                                            link: AnyView(LT_Fields())),
                                LT_ListItem(imageName: "sum",
                                            text: "Terms",
                                            link: AnyView(LT_Terms()))]
    
    var body: some View {
        NavigationView {
            
            List {
                
                // Organizes user's entire library
                ForEach(LT_listItems) { item in
                    NavigationLink(destination: item.link) {
                        LT_ListRow(listItem: item)
                    }
                }
                
            }
            .navigationTitle("Library")
            
        }
    }
    
}

struct LibraryTab_Previews: PreviewProvider {
    static var previews: some View {
        LibraryTab()
    }
}
