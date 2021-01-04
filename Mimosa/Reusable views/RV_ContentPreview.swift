// RV_ContentPreview.swift
// Mimosa: Working title; non-working project.

// Created on 2/1/21
// Swift 5.0

// GNU General Public License v3.0

// A preview of formulas.


import SwiftUI

struct RV_ContentPreview: View {
    
    let title: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(self.title)
                .font(.headline)
                .foregroundColor(.white)
            
            // Placeholder content
            Rectangle()
                .foregroundColor(.secondary)
                .overlay(
                    Text("Placeholder image")
                        .foregroundColor(.white)
                        .font(.system(.body, design: .monospaced))
                )
            
        }
        .padding()
        .background(Color.blue)
        .clipShape( RoundedRectangle(cornerRadius: 10.0, style: .continuous) )
        
    }
    
}

struct RV_ContentPreview_Previews: PreviewProvider {
    static var previews: some View {
        RV_ContentPreview(title: "Placeholder name")
            .frame(height: 175)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
