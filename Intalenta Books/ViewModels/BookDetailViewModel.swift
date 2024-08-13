//
//  BookDetailViewModel.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import Factory

final class BookDetailViewModel: ObservableObject {
    
    @Injected(\.bookDetailRepository) private var repository
    
    enum State {
        case isLoading
        case failed(Error)
        case loaded(BookModel)
    }
    
    @Published private(set) var state = State.isLoading
    
    func getBookDetail(id: String) async {
        let result = await repository.getBookDetail(id: id)
        switch result {
        case .success(let book):
            self.state = .loaded(book)
            
        case .failure(let error):
            self.state = .failed(error)
        }
    }
}
