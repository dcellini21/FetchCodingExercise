//
//  API.swift
//  FetchCodingExercise
//
//  Created by Dom on 7/27/24.
//

import Foundation

class API: ObservableObject {
    func getMealByID(id: String) async throws -> Meal? {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(id)") else {
            print("Bad URL.")
            return nil
        }
        let urlRequest = URLRequest(url: url)
        do {
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let decodedMeal = try JSONDecoder().decode(Meal.self, from: data)
            return decodedMeal
        } catch {
            print("Bad data.")
            return nil
        }
    }
    
    func getDessertsCategory() async throws -> Category? {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert") else {
            print("Bad URL.")
            return nil
        }
        let urlRequest = URLRequest(url: url)
        do {
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let decodedCategory = try JSONDecoder().decode(Category.self, from: data)
            return decodedCategory
        } catch {
            print("Bad data.")
            return nil
        }
    }
}
