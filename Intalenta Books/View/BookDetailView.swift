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

// MARK: - Mock Preview
struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let _ = Container.shared.bookDetailRepository.register { MockBookDetailRepository() }
        BookDetailView()
    }
    
    class MockBookDetailRepository: BookDetailRepositoryProtocol {
        func getBookDetail(id: String) async -> Result<BookModel, any Error> {
            return .success(
                BookModel(id: 1, title: "To Kill a Mockingbird", author: "Harper Lee", description: "A classic of modern American literature that has been celebrated for its finely crafted characters and brilliant storytelling.", cover: URL(string: "https://m.media-amazon.com/images/I/51IXWZzlgSL._SX330_BO1,204,203,200_.jpg"), publicationDate: Date())
            )
        }
    }
}
