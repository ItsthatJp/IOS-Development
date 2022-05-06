//
//  Category.swift
//  Tabares_NewsApp
//
//  Created by Jp Tabares on 5/5/22.
//
import Foundation
enum Category: String, CaseIterable {
    case general
    case business
    case technology
    case entertainment
    case sports
    case science
    case health
    var text: String {
        if self == .general {
            return "Top Headlines"
        }
        return rawValue.capitalized
    }
}
extension Category: Identifiable {
    var id: Self { self }
}
