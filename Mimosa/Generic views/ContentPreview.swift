// ContentPreview.swift

// Created on 2/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// A preview of formulas, categories, or terms.


import SwiftUI

/// Used by `GV_ContentPreview` to determine the type of content to preview.
enum PreviewContentType { case formula, category, term }

/// A view that offers a condensed preview with a name and an image.
///
/// A `Frame` should be used to set the width of the preview. Its height is predetermined based on its `contentType`.
struct ContentPreview: View {
    
    let heading: String
    let contentType: PreviewContentType       // TODO: Will be used to modify this view to fit its use case.
    
    private var height: CGFloat {
        get {
            switch self.contentType {
            
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
        ContentPreview(heading: "Placeholder name", contentType: .formula)
            .padding()
            .previewLayout(.sizeThatFits)
        
    }
}
