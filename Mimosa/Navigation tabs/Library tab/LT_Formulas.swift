// LT_Formulas.swift

// Created on 1/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// Shows all of the user's saved formulas.


import SwiftUI

struct LT_Formulas: View {
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(columns: [ GridItem(.adaptive(minimum: 300)) ]) {
                
                // TODO: Placeholder content
                ForEach((0...3), id: \.self) { _ in
                    ContentPreview(heading: "Formula name", type: .formula)
                }
                
            }
            .padding()
            
        }
        .navigationTitle("Formulas")
        
    }
}

struct LT_Formulas_Previews: PreviewProvider {
    static var previews: some View {
        
        // Preview is wrapped in a navigation view to make the navigation title visible.
        NavigationView {
            LT_Formulas()
        }
        
    }
}
