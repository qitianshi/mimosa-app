// LT_ListRow.swift
// Mimosa: Working title; non-working project.

// Created on 1/1/21
// Swift 5.0

// GNU General Public License v3.0

// A single row in the NavigationView List in LibraryTab.swift.


import SwiftUI

/// Model for information that describes each list row.
struct LT_ListItem: Identifiable {
    var id = UUID()
    let imageName: String
    let text: String
    let link: AnyView
}

struct LT_ListRow: View {
    
    let listItem: LT_ListItem
    
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
