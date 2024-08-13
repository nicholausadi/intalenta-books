//
//  BookDetailView.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import SwiftUI
import Factory

struct BookDetailView: View {
    @ObservedObject private var viewModel = BookDetailViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
            Text("Book Detail")
        }
        .padding()
    }
}

#Preview {
    BookDetailView()
}
