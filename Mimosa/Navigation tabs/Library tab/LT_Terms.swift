// LT_Terms.swift

// Created on 1/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// Shows all of the user's saved terms.


import SwiftUI

struct LT_Terms: View {
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(columns: [ GridItem(.adaptive(minimum: 150)) ]) {
                
                // TODO: Placeholder content
                ForEach((0...7), id: \.self) { _ in
                    ContentPreview(heading: "Term name", contentType: .term)
                        .frame(height: 175)
                }
                
            }
            .padding()
            
        }
        .navigationTitle("Terms")
        
    }
}

struct LT_Terms_Previews: PreviewProvider {
    static var previews: some View {
        
        // Preview is wrapped in a navigation view to make the navigation title visible.
        NavigationView {
            LT_Terms()
        }
        
    }
}
