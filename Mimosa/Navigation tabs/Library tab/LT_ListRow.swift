// LT_ListRow.swift

// Created on 1/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// A single row in the NavigationView List in LibraryTab.


import SwiftUI

/// Model for information that describes each list row in `LibraryTab`.
typealias LT_ListItem = LT_ListRow.ListItem

struct LT_ListRow: View {
    
    let listItem: LT_ListItem
    
    /// Model for information that describes each list row.
    struct ListItem: Identifiable {
        var id = UUID()
        let imageName: String
        let text: String
        let link: AnyView
    }
    
    var body: some View {
        
        HStack {
            
            Image(systemName: self.listItem.imageName)
                .font(.title2)
                .foregroundColor(.blue)
                .frame(width: 20)
                .padding(.trailing)
            
            Text(self.listItem.text)
                .font(.title2)
            
        }
        .padding(10)
        
    }
    
}

struct LT_ListRow_Previews: PreviewProvider {
    static var previews: some View {
        
        // Placeholder values for imageName and text.
        LT_ListRow(listItem: LT_ListItem(imageName: "function", text: "Formulas", link: AnyView(LT_Formulas())))
            .previewLayout(.sizeThatFits)
        
    }
}
