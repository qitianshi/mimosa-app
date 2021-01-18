// Ut_ConditionalModifier.swift

// Created on 14/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// A modifier that is only applied to a SwiftUI View when a condition is met.


import SwiftUI

extension View {
    
    /// A modifier that is only applied to a SwiftUI View when a condition is met.
    /// - Parameters:
    ///   - condition: The condition that is to be evaluated.
    ///   - content: The View that this modifier will be applied to.
    ///
    /// Use `conditionalModifier(if:)` to conditionally apply a modifier to a SwiftUI View:
    /// ```
    /// Text("Hello, world!")
    ///     .conditionalModifier(if: redText) { content in
    ///         content
    ///             .foregroundColor(.red)
    ///     }
    /// ```
    @ViewBuilder func conditionalModifier<Content: View>(if condition: Bool, content: (Self) -> Content) -> some View {
        if condition { content(self) }
        else { self }
    }
    
}

struct Ut_ConditionalModifier_Previews: PreviewProvider {
    static var previews: some View {
        
        Text("Hello, world!")
            .conditionalModifier(if: true) { content in
                content
                    .foregroundColor(.red)
            }
            .padding()
            .previewLayout(.sizeThatFits)
        
    }
}
