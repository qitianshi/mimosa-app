// LT_Terms.swift
// Mimosa: Working title; non-working project.

// Created on 1/1/21
// Swift 5.0

// GNU General Public License v3.0

// Shows all of the user's saved terms.


import SwiftUI

struct LT_Terms: View {
    var body: some View {
        
        // Placeholder content
        Text("LT_Terms.swift")
            .font(.system(.body, design: .monospaced))
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
