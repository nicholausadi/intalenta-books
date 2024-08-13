//
//  BookDetailRepository.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import Factory

protocol BookDetailRepositoryProtocol {
    func getBookDetail(id: String) async -> Result<BookModel, Error>
}

class BookDetailRepository: BookDetailRepositoryProtocol {
    @Injected(\.bookDetailService) private var service
    
    func getBookDetail(id: String) async -> Result<BookModel, Error> {
        // This is API called to get book detail.
        // Later we can implement local cache in here.
        return await service.getBookDetail(id: id)
    }
}
