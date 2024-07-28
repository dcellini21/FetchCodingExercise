//
//  Category.swift
//  FetchCodingExercise
//
//  Created by Dom on 7/27/24.
//

import Foundation

struct Category: Codable {
    var meals: [MealCondensed]
}

struct MealCondensed: Codable {
    var strMeal: String
    var idMeal: String
}
