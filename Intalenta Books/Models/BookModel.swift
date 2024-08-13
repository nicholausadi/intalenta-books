//
//  BookModel.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import CodableWrappers

struct BookModel: Decodable {
    
    @FallbackDecoding<EmptyInt>
    var id: Int
    
    @FallbackDecoding<EmptyString>
    var title: String
    
    @FallbackDecoding<EmptyString>
    var author: String
    
    @FallbackDecoding<EmptyString>
    var description: String
    
    @CodingUses<URLCoder>
    var cover: URL?
    
    @OptionalDecoding<ISO8601DateCoding>
    var publicationDate: Date?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case author
        case description
        case cover
        case publicationDate
    }
}
