// SearchBar.swift

// Created on 16/1/21
// Contributors: Qi Tianshi
// Swift 5.0

// Mimosa: Working title; non-working project.

// A search bar.


import SwiftUI

/// A search bar.
///
/// `SearchBar` does not perform any searching. Retrieve the text input using a binding variable.
struct SearchBar: UIViewRepresentable {
    
    /// The text input received by `SearchBar`,
    @Binding var query: String
    
    /// The placeholder text that will be displayed when the search bar is empty.
    let placeholderText: String
    
    // Instructs SwiftUI how to initialize an instance of UISearchBar. Required by UIViewRepresentable.
    func makeUIView(context: Context) -> UISearchBar {
        
        let searchBar = UISearchBar(frame: .zero)
        
        searchBar.delegate = context.coordinator
        searchBar.placeholder = self.placeholderText
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        
        return searchBar
        
    }
    
    // Instructs SwiftUI how to update the view when changes happen to its state. Required by UIViewRepresentable.
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = query
    }
    
    // Creates a model for a Coordinator that allows SearchBar to use the UISearchBarDelegate.
    class Coordinator: NSObject, UISearchBarDelegate {
        
        @Binding var searchQuery: String
        
        // Passes the text input into the binding variable. Required by UISearchBarDelegate.
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            self.searchQuery = searchText
        }
        
        init(searchQuery: Binding<String>) {
            _searchQuery = searchQuery
        }
        
    }
    
    // Initializes the coordinator with the binding variable.
    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(searchQuery: $query)
    }
    
    /*
     When the value of the text input in the UISearchBar is changed, it informs the
     delegate (which is wrapped in the Coordinator class) of the change by calling
     searchBar(_:textDidChange:). searchBar() then stores this change into a binding
     variable, which in turn is bound to the binding variable in SearchBar, which is
     then passed to a state variable.
     */
    
}

struct SearchBarPreview_Previews: PreviewProvider {
    static var previews: some View {
        
        SearchBar(query: .constant(""), placeholderText: "Placeholder text")
            .previewLayout(.sizeThatFits)
        
    }
}
