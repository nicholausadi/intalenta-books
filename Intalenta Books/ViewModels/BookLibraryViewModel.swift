//
//  BookLibraryViewModel.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import Factory

final class BookLibraryViewModel: ObservableObject {
    
    @Injected(\.listBookRepository) private var repository
    
    enum State {
        case isLoading
        case failed(Error)
        case loaded([BookModel])
    }
    
    @Published private(set) var state = State.isLoading
    
    func getBooks() async {
        let result = await repository.getBooks()
        switch result {
        case .success(let books):
            self.state = .loaded(books)
            
        case .failure(let error):
            self.state = .failed(error)
        }
    }
}
