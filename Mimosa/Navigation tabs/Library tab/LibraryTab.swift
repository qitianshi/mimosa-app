// LibraryTab.swift

// Created on 31/12/20
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// The Library tab houses the user's saved formulas and notes.


import SwiftUI

struct LibraryTab: View {
    
    // Content of each list row is stored in an array so they can be generated programmatically.
    private static let listItems = [LT_ListItem(imageName: "function",
                                                text: "Formulas",
                                                link: AnyView(LT_ListDetail(title: "Formulas",
                                                                            contentType: .formula))),
                                    LT_ListItem(imageName: "book.closed",
                                                text: "Categories",
                                                link: AnyView(LT_ListDetail(title: "Categories",
                                                                            contentType: .category))),
                                    LT_ListItem(imageName: "sum",
                                                text: "Terms",
                                                link: AnyView(LT_ListDetail(title: "Terms",
                                                                            contentType: .term)))]
    
    var body: some View {
        NavigationView {
            
            List {
                
                // Organizes user's entire library
                ForEach(LibraryTab.listItems) { item in
                    NavigationLink(destination: item.link) {
                        LT_ListRow(listItem: item)
                    }
                }
                
                LT_Recents()
                    .padding(.top)
                
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
