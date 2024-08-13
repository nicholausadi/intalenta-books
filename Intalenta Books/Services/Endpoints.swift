//
//  Endpoints.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import Alamofire

struct BaseUrl {
    #if DEBUG
    // stg
    static let url = "https://my-json-server.typicode.com"
    
    #else
    // prd
    // Later we can change this to production or non-mock api.
    static let url = "https://my-json-server.typicode.com"
    #endif
}

enum Endpoints {
    case booksList
    case bookDetail(bookId: String)
    
    public var url: String {
        switch self {
        case .booksList: return "/\(BaseUrl.url)/mock/books"
        case .bookDetail(let bookId): return "/\(BaseUrl.url)/cutamar/mock/books/\(bookId)"
        }
    }
}
