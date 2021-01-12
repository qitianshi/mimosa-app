// BrowseTab.swift

// Created on 31/12/20
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// The Browse tab showcases formulas and recommends them based on user activity.


import SwiftUI

struct BrowseTab: View {
    
    // Content of each list row is stored in an array so they can be generated programmatically.
    private static let listHeadings = [BT_ListItem(heading: "Formulas",
                                                   previewType: .formula),
                                       BT_ListItem(heading: "Categories",
                                                   previewType: .category),
                                       BT_ListItem(heading: "Terms",
                                                   previewType: .term)]
    
    var body: some View {
        NavigationView {
            
            List {
                
                ForEach(BrowseTab.listHeadings) { item in
                    BT_ListRow(heading: item.heading, previewType: item.previewType)
                }
                .listRowInsets(EdgeInsets())        // Sets insets to zero to allow horizontal scrolling to reach display edges.
                
            }
            .navigationTitle("Browse")
            
        }
    }
    
}

struct BrowseTab_Previews: PreviewProvider {
    static var previews: some View {
        BrowseTab()
    }
}
