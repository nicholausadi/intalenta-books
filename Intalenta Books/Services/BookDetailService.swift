//
//  BookDetailService.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import Factory

protocol BookDetailServiceProtocol {
    func getBookDetail(id: String) async -> Result<BookModel, Error>
}

class BookDetailService: BookDetailServiceProtocol {
    @Injected(\.network) private var network
    
    func getBookDetail(id: String) async -> Result<BookModel, Error> {
        do {
            // Call api request.
            let response = try await network.request(method: .get, endpoint: Endpoints.bookDetail(id: id).url, headers: [:], params: [:], of: BookModel.self)
            return .success(response)
        } catch {
            return .failure(error)
        }
    }
}
