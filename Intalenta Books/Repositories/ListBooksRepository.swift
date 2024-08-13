//
//  ListBooksRepository.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import Factory

protocol ListBooksRepositoryProtocol {
    func getBooks() async -> Result<[BookModel], Error>
}

class ListBooksRepository: ListBooksRepositoryProtocol {
    @Injected(\.listBookService) private var service
    
    func getBooks() async -> Result<[BookModel], Error> {
        // This is API called to get list of book.
        // Later we can implement local cache in here.
        return await service.getBooks()
    }
}
