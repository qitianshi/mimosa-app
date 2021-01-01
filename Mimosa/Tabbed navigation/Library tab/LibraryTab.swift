// LibraryTab.swift
// Mimosa: Working title; non-working project.

// Created on 31/12/20
// Swift 5.0

// GNU General Public License v3.0

// The Library tab houses the user's saved formulas and notes.


import SwiftUI

/// Model for information that describes each list row.
fileprivate struct LT_ListItem: Hashable {
    let imageName: String
    let text: String
}

struct LibraryTab: View {
    
    // Content of each list row is stored in an array so they can be generated programmatically.
    private let LT_ListItems = [LT_ListItem(imageName: "function", text: "Formulas"),
                                LT_ListItem(imageName: "book.closed", text: "Fields"),
                                LT_ListItem(imageName: "sum", text: "Terms")]
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(LT_ListItems, id: \.self) { item in
                    LT_ListRow(imageName: item.imageName, text: item.text)
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
