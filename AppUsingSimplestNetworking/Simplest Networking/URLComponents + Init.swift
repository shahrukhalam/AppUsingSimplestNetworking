//
//  URLComponents + Init.swift
//  URLComponents + Init
//
//  Created by Shahrukh Alam on 24/09/21.
//

import Foundation

extension URLComponents {
    
    init(scheme: String  = "https",
         host: String = "api.myapp.com",
         path: String,
         queryItems: [URLQueryItem]? = nil) {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        components.queryItems = queryItems
        self = components
    }
    
}
