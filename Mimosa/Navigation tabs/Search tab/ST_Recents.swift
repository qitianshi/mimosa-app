// ST_Recents.swift

// Created on 16/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// Shows the user's recently viewed results.


import SwiftUI

struct ST_Recents: View {
    var body: some View {
        
        // Recently added formulas
        VStack(alignment: .leading) {
            
            Text("Recently viewed")
                .font(.title2)
                .fontWeight(.bold)
            
            // TODO: Placeholder content
            LazyVStack {
                ForEach((0...1), id: \.self) { _ in
                    ContentPreview(heading: "Formula name", type: .formula, width: .fill)
                }
            }
            
            LazyVGrid(columns: [ GridItem(.adaptive(minimum: ContentPreview.DimensionPresets.term.width!)) ]) {
                
                // TODO: Placeholder content
                ForEach((0...3), id: \.self) { _ in
                    ContentPreview(heading: "Term name", type: .term, width: .fill)
                }
                
            }
            
            LazyVGrid(columns: [ GridItem(.adaptive(minimum: ContentPreview.DimensionPresets.category.width!)) ]) {
                
                // TODO: Placeholder content
                ForEach((0...1), id: \.self) { _ in
                    ContentPreview(heading: "Category name", type: .category, width: .fill)
                }
                
            }
            
        }
        
    }
}

struct ST_Recents_Previews: PreviewProvider {
    static var previews: some View {
        ST_Recents()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
