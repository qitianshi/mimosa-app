// ContentPreview.swift

// Created on 2/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// A preview of formulas, categories, or terms.


import SwiftUI

/// The type of content to be shown by `ContentPreview`.
typealias PreviewType = ContentPreview.ContentType

/// A dimension (the height or width) of a `ContentPreview`.
typealias PreviewDimensionValue = ContentPreview.DimensionValue

/// The dimensions of a `ContentPreview`, as defined by its height and width.
typealias PreviewDimensions = ContentPreview.Dimensions

/// A view that offers a preview of some content with a name and an image.
struct ContentPreview: View {
    
    // The text that appears as the preview's heading.
    private let heading: String
    
    /// The type of content to be shown by `ContentPreview`.
    enum ContentType { case formula, category, term }
    private let type: ContentPreview.ContentType
    
    // The dimensions of the preview.
    struct Dimensions {
        var width: CGFloat?
        var height: CGFloat?
    }
    private var dimensions: Dimensions
    
    /// Presets for the default dimensions of previews for different preview types.
    enum DimensionPresets {
        static let formula = PreviewDimensions(width: 300, height: 175)
        static let category = PreviewDimensions(width: 150, height: 150)
        static let term = PreviewDimensions(width: 175, height: 175)
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
        .frame(width: self.dimensions.width, height: self.dimensions.height)        // If the width or height parameters are nil, SwiftUI expands the frame to fill that area.
            
    }
    
    /// A dimension (the height or width) of a `ContentPreview`.
    enum DimensionValue {
        
        /// Uses the predefined dimension for this `PreviewType`.
        case automatic
        
        /// Allows the preview to fill its available space.
        case fill
        
        /// Provides a custom value.
        case value(CGFloat)
        
    }
    
    /// A view that offers a condensed preview with a name and an image.
    /// - Parameters:
    ///   - heading: The text that appears as the preview's heading.
    ///   - type: The type of content to preview.
    ///   - width: The width of the preview.
    ///   - height: The height of the preview.
    ///
    /// You can use `ContentPreview(heading:type:width:height:)` to override the predefined dimensions for each preview and instruct `ContentPreview` to use a custom size or fill the area it's given.
    init(heading: String, type: PreviewType, width: PreviewDimensionValue = .automatic, height: PreviewDimensionValue = .automatic) {
        
        self.heading = heading
        self.type = type
        
        // Closures provide the correct value for PreviewDimensions.
        self.dimensions = Dimensions(width: { () in
            switch width {
            
            case .fill:
                return nil
                
            case let .value(overriddenWidth):
                return overriddenWidth
                
            case .automatic where type == .formula:
                return ContentPreview.DimensionPresets.formula.width
                
            case .automatic where type == .category:
                return ContentPreview.DimensionPresets.category.width
                
            case .automatic where type == .term:
                return ContentPreview.DimensionPresets.term.width
                
            default:
                return nil
                
            }
        }(), height: { () in
            switch height {
            
            case .fill:
                return nil
                
            case let .value(overriddenWidth):
                return overriddenWidth
                
            case .automatic where type == .formula:
                return ContentPreview.DimensionPresets.formula.height
                
            case .automatic where type == .category:
                return ContentPreview.DimensionPresets.category.height
                
            case .automatic where type == .term:
                return ContentPreview.DimensionPresets.term.height
                
            default:
                return nil
                
            }
        }())
        
    }
    
}

struct ContentPreview_Previews: PreviewProvider {
    static var previews: some View {
        
        // Placeholder values for title and type.
        ContentPreview(heading: "Placeholder name", type: .formula, width: .fill, height: .automatic)
            .previewLayout(.fixed(width: 500, height: 500))
        
    }
}
