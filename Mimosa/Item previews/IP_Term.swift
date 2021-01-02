// IP_Term.swift
// Mimosa: Working title; non-working project.

// Created on 2/1/21
// Swift 5.0

// GNU General Public License v3.0

// A grid of terms.


import SwiftUI

struct IP_Term: View {
    var body: some View {
        
        // Placeholder content
        VStack(alignment: .leading) {
            
            Text("Term name")
                .font(.headline)
                .foregroundColor(.white)
            
            Rectangle()
                .foregroundColor(.secondary)
                .overlay(
                    Text("Placeholder term")
                        .foregroundColor(.white)
                        .font(.system(.body, design: .monospaced))
                )
            
        }
        .padding()
        .background(Color.blue)
        .clipShape( RoundedRectangle(cornerRadius: 10.0, style: .continuous) )
        
    }
}

struct IP_Term_Previews: PreviewProvider {
    static var previews: some View {
        IP_Term()
            .frame(width: 125, height: 125)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
