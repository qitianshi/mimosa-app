// BT_ListRow.swift

// Created on 7/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// A single row in the NavigationView List in BrowseTab.


import SwiftUI

/// Model for information that describes each list row in `BrowseTab`.
typealias BT_ListItem = BT_ListRow.ListItem

struct BT_ListRow: View {
    
    let heading: String
    let previewType: PreviewType
    
    /// Model for information that describes each list row.
    struct ListItem: Identifiable {
        var id = UUID()
        var heading: String
        var previewType: PreviewType
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(self.heading)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                LazyHStack {
                    ForEach((0...3), id: \.self) { i in
                        
                        // TODO: Placeholder content
                        ContentPreview(heading: "Preview \(i + 1)", type: self.previewType)
                        
                    }
                }
                .padding(.horizontal)       // Adds some space at either end of the horizontal scroll.
                
            }
            
        }
        .padding(.vertical)
        
    }
    
}

struct BT_ListRow_Previews: PreviewProvider {
    static var previews: some View {
        
        // Placeholder values for heading and previewType.
        BT_ListRow(heading: "Formulas", previewType: .formula)
            .previewLayout(.sizeThatFits)
        
    }
}
