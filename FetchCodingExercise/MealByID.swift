//
//  Meal.swift
//  FetchCodingExercise
//
//  Created by Dom on 7/27/24.
//

import Foundation

struct MealByID: Codable {
    var meals: [Meal]
}

struct Meal: Codable {
    var idMeal: String
    var strMeal: String
    var strInstructions: String
    private var strIngredient1: String?
    var defaultIngredient1: String {strIngredient1 ?? ""}
    private var strIngredient2: String?
    var defaultIngredient2: String {strIngredient2 ?? ""}
    private var strIngredient3: String?
    var defaultIngredient3: String {strIngredient3 ?? ""}
    private var strIngredient4: String?
    var defaultIngredient4: String {strIngredient4 ?? ""}
    private var strIngredient5: String?
    var defaultIngredient5: String {strIngredient5 ?? ""}
    private var strIngredient6: String?
    var defaultIngredient6: String {strIngredient6 ?? ""}
    private var strIngredient7: String?
    var defaultIngredient7: String {strIngredient7 ?? ""}
    private var strIngredient8: String?
    var defaultIngredient8: String {strIngredient8 ?? ""}
    private var strIngredient9: String?
    var defaultIngredient9: String {strIngredient9 ?? ""}
    private var strIngredient10: String?
    var defaultIngredient10: String {strIngredient10 ?? ""}
    private var strIngredient11: String?
    var defaultIngredient11: String {strIngredient11 ?? ""}
    private var strIngredient12: String?
    var defaultIngredient12: String {strIngredient12 ?? ""}
    private var strIngredient13: String?
    var defaultIngredient13: String {strIngredient13 ?? ""}
    private var strIngredient14: String?
    var defaultIngredient14: String {strIngredient14 ?? ""}
    private var strIngredient15: String?
    var defaultIngredient15: String {strIngredient15 ?? ""}
    private var strIngredient16: String?
    var defaultIngredient16: String {strIngredient16 ?? ""}
    private var strIngredient17: String?
    var defaultIngredient17: String {strIngredient17 ?? ""}
    private var strIngredient18: String?
    var defaultIngredient18: String {strIngredient18 ?? ""}
    private var strIngredient19: String?
    var defaultIngredient19: String {strIngredient19 ?? ""}
    private var strIngredient20: String?
    var defaultIngredient20: String {strIngredient20 ?? ""}
    private var strMeasure1: String?
    var defaultMeasure1: String {strMeasure1 ?? ""}
    private var strMeasure2: String?
    var defaultMeasure2: String {strMeasure2 ?? ""}
    private var strMeasure3: String?
    var defaultMeasure3: String {strMeasure3 ?? ""}
    private var strMeasure4: String?
    var defaultMeasure4: String {strMeasure4 ?? ""}
    private var strMeasure5: String?
    var defaultMeasure5: String {strMeasure5 ?? ""}
    private var strMeasure6: String?
    var defaultMeasure6: String {strMeasure6 ?? ""}
    private var strMeasure7: String?
    var defaultMeasure7: String {strMeasure7 ?? ""}
    private var strMeasure8: String?
    var defaultMeasure8: String {strMeasure8 ?? ""}
    private var strMeasure9: String?
    var defaultMeasure9: String {strMeasure9 ?? ""}
    private var strMeasure10: String?
    var defaultMeasure10: String {strMeasure10 ?? ""}
    private var strMeasure11: String?
    var defaultMeasure11: String {strMeasure11 ?? ""}
    private var strMeasure12: String?
    var defaultMeasure12: String {strMeasure12 ?? ""}
    private var strMeasure13: String?
    var defaultMeasure13: String {strMeasure13 ?? ""}
    private var strMeasure14: String?
    var defaultMeasure14: String {strMeasure14 ?? ""}
    private var strMeasure15: String?
    var defaultMeasure15: String {strMeasure15 ?? ""}
    private var strMeasure16: String?
    var defaultMeasure16: String {strMeasure16 ?? ""}
    private var strMeasure17: String?
    var defaultMeasure17: String {strMeasure17 ?? ""}
    private var strMeasure18: String?
    var defaultMeasure18: String {strMeasure18 ?? ""}
    private var strMeasure19: String?
    var defaultMeasure19: String {strMeasure19 ?? ""}
    private var strMeasure20: String?
    var defaultMeasure20: String {strMeasure20 ?? ""}
}
