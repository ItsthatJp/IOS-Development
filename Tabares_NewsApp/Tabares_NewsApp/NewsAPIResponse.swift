//
//  NewsAPIResponse.swift
//  Tabares_NewsApp
//
//  Created by Jp Tabares on 5/5/22.
//

import Foundation
struct NewsAPIResponse: Decodable {
    let status: String
    let totalResults: Int?
    let articles: [Article]?
    let code: String?
    let message: String?
}
