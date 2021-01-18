// LT_ListDetail.swift

// Created on 17/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// Shows all of the user's saved formulas, categories, or terms.


import SwiftUI

struct LT_ListDetail: View {
    
    let title: String
    let contentType: PreviewType
    
    let contentWidth: CGFloat       // Value will be calculated programmatically.
    
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(columns: [ GridItem(.adaptive(minimum: self.contentWidth)) ]) {
                
                // TODO: Placeholder content
                ForEach((0...3), id: \.self) { _ in
                    ContentPreview(heading: "Placeholder name", type: self.contentType, width: .fill)
                }
                
            }
            .padding()
            
        }
        .navigationTitle(self.title)
        
    }
    
    init(title: String, contentType: PreviewType) {
        
        self.title = title
        self.contentType = contentType
        
        self.contentWidth = { () -> CGFloat in
            switch contentType {
            
            case .formula:
                return ContentPreview.DimensionPresets.formula.width!
                
            case .category:
                return ContentPreview.DimensionPresets.category.width!
                
            case .term:
                return ContentPreview.DimensionPresets.term.width!
            
            }
        }()
        
    }
    
}

struct LT_ListDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LT_ListDetail(title: "Formulas", contentType: .formula)
        }
    }
}
