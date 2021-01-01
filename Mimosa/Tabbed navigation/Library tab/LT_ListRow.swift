// LT_ListRow.swift
// Mimosa: Working title; non-working project.

// Created on 1/1/21
// Swift 5.0

// GNU General Public License v3.0

// A single row in the NavigationView List in LibraryTab.swift.


import SwiftUI

struct LT_ListRow: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        
        HStack {
            
            Image(systemName: self.imageName)
                .font(.title2)
                .foregroundColor(.blue)
                .frame(width: 20)
                .padding(.trailing)
            
            Text(self.text)
                .font(.title2)
            
        }
        .padding(10)
        
    }
    
}

struct LT_ListRow_Previews: PreviewProvider {
    static var previews: some View {
        
        // Placeholder values for imageName and text.
        LT_ListRow(imageName: "function", text: "Formulas")
            .previewLayout(.sizeThatFits)
        
    }
}
