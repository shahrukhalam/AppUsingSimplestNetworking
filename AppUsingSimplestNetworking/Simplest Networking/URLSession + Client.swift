//
//  URLSession + Client.swift
//  URLSession + Client
//
//  Created by Shahrukh Alam on 24/09/21.
//

import Foundation
import Combine

extension URLSession {
    
    func fetch<Response: Decodable>(for request: URLRequest,
                                    with type: Response.Type) -> AnyPublisher<Response, Error> {
        dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: type, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
}
