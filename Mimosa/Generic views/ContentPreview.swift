// ContentPreview.swift

// Created on 2/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// A preview of formulas, categories, or terms.


import SwiftUI

typealias PreviewType = ContentPreview.ContentType

/// A view that offers a condensed preview with a name and an image.
///
/// A `Frame` should be used to set the width of the preview. Its height is predetermined based on its `contentType`.
struct ContentPreview: View {
    
    let heading: String
    
    /// The type of content to preview.
    enum ContentType { case formula, category, term }
    let type: ContentPreview.ContentType
    
    private var height: CGFloat {
        get {
            switch self.type {
            
            case .formula:
                return 175
            case .category, .term:
                return 150
                
            }
        }
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(self.heading)
                .applyPlaceholderTextStyle(withBorder: false)
                .font(.headline)
                .foregroundColor(.white)
            
            // TODO: Placeholder content
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.75)
                .overlay(
                    Text("Placeholder image")
                        .applyPlaceholderTextStyle(withBorder: false)
                        .foregroundColor(.white)
                )
            
        }
        .padding()
        .background(Color.secondary)
        .clipShape( RoundedRectangle(cornerRadius: 10.0, style: .continuous) )
        .frame(height: self.height)
        
    }
    
}

struct ContentPreview_Previews: PreviewProvider {
    static var previews: some View {
        
        // Placeholder values for title and type.
        ContentPreview(heading: "Placeholder name", type: .formula)
            .padding()
            .previewLayout(.sizeThatFits)
        
    }
}
