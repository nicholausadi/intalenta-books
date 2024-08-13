//
//  ListBooksService.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import Factory

protocol ListBooksServiceProtocol {
    func getBooks() async -> Result<[BookModel], Error>
}

class ListBooksService: ListBooksServiceProtocol {
    @Injected(\.network) private var network
    
    func getBooks() async -> Result<[BookModel], Error> {
        do {
            // Call api request.
            let response = try await network.request(method: .get, endpoint: Endpoints.listBooks.url, headers: [:], params: [:], of: [BookModel].self)
            return .success(response)
        } catch {
            return .failure(error)
        }
    }
}
