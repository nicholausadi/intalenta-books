//
//  BookLibraryView.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import SwiftUI
import Factory

struct BookLibraryView: View {
    @ObservedObject private var viewModel = BookLibraryViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
            Text("Book Library")
        }
        .padding()
    }
}

#Preview {
    BookLibraryView()
}
