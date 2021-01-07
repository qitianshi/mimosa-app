// BT_ListRow.swift
// Mimosa: Working title; non-working project.

// Created on 7/1/21
// Swift 5.0

// GNU General Public License v3.0

// A single row in the NavigationView List in BrowseTab.


import SwiftUI

/// Model for information that describes each list row.
struct BT_ListItem: Identifiable {
    var id = UUID()
    var heading: String
    var previewType: PreviewContentType
}

struct BT_ListRow: View {
    
    let heading: String
    let previewType: PreviewContentType
    
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
                        GV_ContentPreview(heading: "Preview \(i + 1)", contentType: self.previewType)
                            .frame(width: 200, height: 120)
                        
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
            .frame(height: 200)
            .previewLayout(.sizeThatFits)
        
    }
}
