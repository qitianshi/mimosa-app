// IP_Formula.swift
// Mimosa: Working title; non-working project.

// Created on 2/1/21
// Swift 5.0

// GNU General Public License v3.0

// A grid of formulas.


import SwiftUI

struct IP_Formula: View {
    var body: some View {
        
        // Placeholder content
        VStack(alignment: .leading) {
            
            Text("Formula name")
                .font(.headline)
                .foregroundColor(.white)
            
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.secondary)
                .overlay(
                    Text("Placeholder formula")
                        .foregroundColor(.white)
                        .font(.system(.body, design: .monospaced))
                )
            
        }
        .padding()
        .background(Color.blue)
        .clipShape( RoundedRectangle(cornerRadius: 10.0, style: .continuous) )
        
    }
}

struct IP_Formula_Previews: PreviewProvider {
    static var previews: some View {
        IP_Formula()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
