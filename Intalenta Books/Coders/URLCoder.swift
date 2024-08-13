//
//  URLCoder.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import CodableWrappers

struct URLCoder: StaticCoder {

    static func decode(from decoder: Decoder) throws -> URL? {
        let urlString = try String(from: decoder)
        return URL(string: urlString)
    }

    static func encode(value: URL?, to encoder: Encoder) throws {
        let urlString = value?.absoluteString
        return try urlString.encode(to: encoder)
    }
}
