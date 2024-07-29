//
//  API.swift
//  FetchCodingExercise
//
//  Created by Dom on 7/27/24.
//

import Foundation

class API: ObservableObject {
    func getMealByID(id: String) async throws -> MealByID? {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(id)") else {
            print("Bad URL.")
            return nil
        }
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            print("Bad response.")
            return nil
        }
        do {
            let decodedMeal = try JSONDecoder().decode(MealByID.self, from: data)
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
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            print("Bad response.")
            return nil
        }
        do {
            let decodedCategory = try JSONDecoder().decode(Category.self, from: data)
            return decodedCategory
        } catch {
            print("Bad data.")
            return nil
        }
    }
}
