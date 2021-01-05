// LT_Categories.swift
// Mimosa: Working title; non-working project.

// Created on 1/1/21
// Swift 5.0

// GNU General Public License v3.0

// Shows all of the user's saved categories.


import SwiftUI

struct LT_Categories: View {
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(columns: [ GridItem(.adaptive(minimum: 150)) ]) {
                
                // Placeholder content
                ForEach((0...7), id: \.self) { _ in
                    RV_ContentPreview(title: "Category name", type: .category)
                        .frame(height: 175)
                }
                
            }
            .padding()
            
        }
        .navigationTitle("Categories")
        
    }
}

struct LT_Categories_Previews: PreviewProvider {
    static var previews: some View {
        
        // Preview is wrapped in a navigation view to make the navigation title visible.
        NavigationView {
            LT_Categories()
        }
        
    }
}
