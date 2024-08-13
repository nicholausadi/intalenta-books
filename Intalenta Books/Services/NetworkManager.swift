//
//  NetworkManager.swift
//  Intalenta Books
//
//  Created by Nicholaus Adisetyo Purnomo on 14/08/24.
//

import Foundation
import Alamofire

protocol NetworkProtocol {
    func request<T: Decodable>(method: HTTPMethod, endpoint: String, headers: [String: String], params: Parameters?, of type: T.Type) async throws -> T
}

actor NetworkManager: NetworkProtocol {
    
    func request<T: Decodable>(
        method: HTTPMethod,
        endpoint: String,
        headers: [String: String],
        params: Parameters?,
        of type: T.Type
    ) async throws -> T {
        // Set Encoding
        var encoding: ParameterEncoding = JSONEncoding.default
        switch method {
        case .post:
            encoding = JSONEncoding.default
        case .get:
            encoding = URLEncoding.default
        default:
            encoding = JSONEncoding.default
        }

        // You must resume the continuation exactly once
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(
                endpoint,
                method: method,
                parameters: params,
                encoding: encoding,
                headers: HTTPHeaders(headers)
            ).responseDecodable(of: type) { response in
                switch response.result {
                case let .success(data):
                    continuation.resume(returning: data)

                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
