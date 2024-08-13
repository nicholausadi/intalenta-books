//
//  DependencyContainer.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import Factory

extension Container {
    var network: Factory<NetworkProtocol> {
        Factory(self) { NetworkManager() }.scope(.shared)
    }
    
    var listBookService: Factory<ListBooksServiceProtocol> {
        Factory(self) { ListBooksService() }.scope(.shared)
    }
    
    var bookDetailService: Factory<BookDetailServiceProtocol> {
        Factory(self) { BookDetailService() }.scope(.shared)
    }
    
    var listBookRepository: Factory<ListBooksRepositoryProtocol> {
        Factory(self) { ListBooksRepository() }.scope(.shared)
    }
    
    var bookDetailRepository: Factory<BookDetailRepositoryProtocol> {
        Factory(self) { BookDetailRepository() }.scope(.shared)
    }
}
