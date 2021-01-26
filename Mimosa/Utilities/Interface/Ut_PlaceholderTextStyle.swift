// Ut_PlaceholderTextStyle.swift

// Created on 5/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// A view modifier for placeholder text.


import SwiftUI

fileprivate struct Ut_PlaceholderTextStyle: ViewModifier {
    
    let addBorder: Bool     // Used to request a gray border around the text.
    
    func body(content: Content) -> some View {
        
        content
            .font(.system(.body, design: .monospaced))
            .conditionalModifier(if: addBorder) {
                $0
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            }
        
    }
    
}

extension View {
    
    /// Applies a style to this `Text` view that marks it as a placeholder.
    /// - Parameter withBorder: Adds a gray border around the text.
    ///
    /// The `Text` view will be given a monospaced font, and, if requested, a gray border.
    ///
    /// Use `withBorder` if the `Text` view is appearing in isolation, such as when it's used to display a filename before other content is added. Otherwise, if it's used in the context of another view, avoid adding a border. Because the border will be padded, remember that this will increase the size of the view this modifier is applied to, which may not be desirable.
    func applyPlaceholderTextStyle(withBorder: Bool = true) -> some View {
        
        self
            .modifier(Ut_PlaceholderTextStyle(addBorder: withBorder))
        
    }
    
}

struct Ut_PlaceholderTextStyle_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            
            Text("Placeholder with border")
                .applyPlaceholderTextStyle()
            
            Text("Placeholder without border")
                .applyPlaceholderTextStyle(withBorder: false)
            
        }
        .padding()
        .previewLayout(.sizeThatFits)
        
    }
}
