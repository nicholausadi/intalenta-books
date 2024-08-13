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
        NavigationView {
//            List(viewModel.state) { book in
//                HStack {
//                    Image(book.imageName)
//                        .resizable()
//                        .frame(width: 60, height: 90)
//                        .cornerRadius(8)
//                    
//                    VStack(alignment: .leading) {
//                        Text(book.title)
//                            .font(.headline)
//                        Text(book.author)
//                            .font(.subheadline)
//                            .foregroundColor(.gray)
//                        
//                        HStack {
//                            ForEach(0..<5) { index in
//                                Image(systemName: index < Int(book.rating) ? "star.fill" : "star")
//                                    .foregroundColor(index < Int(book.rating) ? .yellow : .gray)
//                            }
//                            Text(String(format: "%.1f", book.rating))
//                                .font(.subheadline)
//                                .foregroundColor(.gray)
//                        }
//                        
//                        Text("Last Read \(book.lastRead)")
//                            .font(.footnote)
//                            .foregroundColor(.gray)
//                    }
//                    .padding(.leading, 8)
//                }
//                .padding(.vertical, 8)
//            }
//            .navigationBarTitle("My Library")
//            .onAppear {
//                await viewModel.getBooks()
//            }
        }
    }
}

// MARK: - Mock Preview
struct BookLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        let _ = Container.shared.listBookRepository.register { MockListBooksRepository() }
        BookLibraryView()
    }
    
    class MockListBooksRepository: ListBooksRepositoryProtocol {
        func getBooks() async -> Result<[BookModel], any Error> {
            return .success([
                BookModel(id: 1, title: "To Kill a Mockingbird", author: "Harper Lee", description: "A classic of modern American literature that has been celebrated for its finely crafted characters and brilliant storytelling.", cover: URL(string: "https://m.media-amazon.com/images/I/51IXWZzlgSL._SX330_BO1,204,203,200_.jpg"), publicationDate: Date()),
                BookModel(id: 2, title: "The Great Gatsby", author: "F. Scott Fitzgerald", description: "The story of Jay Gatsby, a self-made millionaire, and his pursuit of the American Dream.", cover: URL(string: "https://m.media-amazon.com/images/I/41NssxNlPlS._SY291_BO1,204,203,200_QL40_FMwebp_.jpg"), publicationDate: Date()),
                BookModel(id: 3, title: "1984", author: "George Orwell", description: "A dystopian novel set in a totalitarian society where individuality is outlawed.", cover: URL(string: "https://m.media-amazon.com/images/I/41aM4xOZxaL._SX277_BO1,204,203,200_.jpg"), publicationDate: Date()),
                BookModel(id: 4, title: "Pride and Prejudice", author: "Jane Austen", description: "A romance novel set in Georgian England that follows the story of Elizabeth Bennet.", cover: URL(string: "https://m.media-amazon.com/images/I/41HiDvK0sQS._SX324_BO1,204,203,200_.jpg"), publicationDate: Date()),
            ])
        }
    }
}
