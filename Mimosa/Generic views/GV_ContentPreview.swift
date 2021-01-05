// GV_ContentPreview.swift
// Mimosa: Working title; non-working project.

// Created on 2/1/21
// Swift 5.0

// GNU General Public License v3.0

// A preview of formulas, categories, or terms.


import SwiftUI

enum PreviewType { case formula, category, term }

struct GV_ContentPreview: View {
    
    let title: String
    let type: PreviewType       // TODO: Will be used to modify this view to fit its use case.
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(self.title)
                .font(.headline)
                .foregroundColor(.white)
            
            // TODO: Placeholder content
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.75)
                .overlay(
                    Text("Placeholder image")
                        .applyPlaceholderTextStyle(withBorder: false)
                        .foregroundColor(.white)
                )
            
        }
        .padding()
        .background(Color.blue)
        .clipShape( RoundedRectangle(cornerRadius: 10.0, style: .continuous) )
        
    }
    
}

struct GV_ContentPreview_Previews: PreviewProvider {
    static var previews: some View {
        
        // Placeholder values for title and type.
        GV_ContentPreview(title: "Placeholder name", type: .formula)
            .frame(height: 175)
            .padding()
            .previewLayout(.sizeThatFits)
        
    }
}
