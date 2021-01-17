// LT_Recents.swift

// Created on 17/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// Shows the user's recently viewed formulas.


import SwiftUI

struct LT_Recents: View {
    var body: some View {
        
        // Recently added formulas
        VStack(alignment: .leading) {
            
            Text("Recent")
                .font(.title2)
                .fontWeight(.bold)
            
            // TODO: Placeholder content
            LazyVStack {
                ForEach((0...3), id: \.self) { _ in
                    ContentPreview(heading: "Formula name", type: .formula, width: .fill)
                }
            }
            
        }
        
    }
}

struct LT_Recents_Previews: PreviewProvider {
    static var previews: some View {
        
        LT_Recents()
            .previewLayout(.sizeThatFits)
        
    }
}
