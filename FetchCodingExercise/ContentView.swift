//
//  ContentView.swift
//  FetchCodingExercise
//
//  Created by Dom on 7/27/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var api = API()
    @State private var desserts: Category?
    var body: some View {
        NavigationView {
            List {
                ForEach(desserts?.meals ?? [], id: \.strMeal) { meal in
                    VStack {
                        NavigationLink {
                            MealView(id: meal.idMeal)
                        } label: {
                            Text("\(meal.strMeal)")
                        }
                    }
                }
            }
            .navigationTitle("Desserts")
            .task {
                do {
                    desserts = try await api.getDessertsCategory()
                } catch {
                    print("Error.")
                }
            }
        }
    }
}

struct MealView: View {
    let id: String
    @ObservedObject var api = API()
    @State private var meal: MealByID?
    @State private var ingredientsList: [String] = []
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(ingredientsList, id: \.self) {
                        ingredient in
                        VStack {
                            Text("\(ingredient)")
                        }
                    }
                }
                Section {
                    Text("Instructions:\n\n\(meal?.meals[0].strInstructions ?? "Loading...")").padding()
                }
            }
        }
        .navigationTitle("\(meal?.meals[0].strMeal ?? "Loading...")")
        .task {
            do {
                meal = try await api.getMealByID(id: self.id)
                var ingredients: [String] = []
                var measures: [String] = []
                ingredients = ["\(meal?.meals[0].defaultIngredient1 ?? "")", "\(meal?.meals[0].defaultIngredient2 ?? "")", "\(meal?.meals[0].defaultIngredient3 ?? "")", "\(meal?.meals[0].defaultIngredient4 ?? "")", "\(meal?.meals[0].defaultIngredient5 ?? "")", "\(meal?.meals[0].defaultIngredient6 ?? "")", "\(meal?.meals[0].defaultIngredient7 ?? "")", "\(meal?.meals[0].defaultIngredient8 ?? "")", "\(meal?.meals[0].defaultIngredient9 ?? "")", "\(meal?.meals[0].defaultIngredient10 ?? "")", "\(meal?.meals[0].defaultIngredient11 ?? "")", "\(meal?.meals[0].defaultIngredient12 ?? "")", "\(meal?.meals[0].defaultIngredient13 ?? "")", "\(meal?.meals[0].defaultIngredient14 ?? "")", "\(meal?.meals[0].defaultIngredient15 ?? "")", "\(meal?.meals[0].defaultIngredient16 ?? "")", "\(meal?.meals[0].defaultIngredient17 ?? "")", "\(meal?.meals[0].defaultIngredient18 ?? "")", "\(meal?.meals[0].defaultIngredient19 ?? "")", "\(meal?.meals[0].defaultIngredient20 ?? "")"]
                ingredients = ingredients.filter{$0 != ""}
                measures = ["\(meal?.meals[0].defaultMeasure1 ?? "")", "\(meal?.meals[0].defaultMeasure2 ?? "")", "\(meal?.meals[0].defaultMeasure3 ?? "")", "\(meal?.meals[0].defaultMeasure4 ?? "")", "\(meal?.meals[0].defaultMeasure5 ?? "")", "\(meal?.meals[0].defaultMeasure6 ?? "")", "\(meal?.meals[0].defaultMeasure7 ?? "")", "\(meal?.meals[0].defaultMeasure8 ?? "")", "\(meal?.meals[0].defaultMeasure9 ?? "")", "\(meal?.meals[0].defaultMeasure10 ?? "")", "\(meal?.meals[0].defaultMeasure11 ?? "")", "\(meal?.meals[0].defaultMeasure12 ?? "")", "\(meal?.meals[0].defaultMeasure13 ?? "")", "\(meal?.meals[0].defaultMeasure14 ?? "")", "\(meal?.meals[0].defaultMeasure15 ?? "")", "\(meal?.meals[0].defaultMeasure16 ?? "")", "\(meal?.meals[0].defaultMeasure17 ?? "")", "\(meal?.meals[0].defaultMeasure18 ?? "")", "\(meal?.meals[0].defaultMeasure19 ?? "")", "\(meal?.meals[0].defaultMeasure20 ?? "")"]
                measures = measures.filter{$0 != ""}
                let numIngredients = ingredients.count
                for i in 0...numIngredients-1 {
                    ingredientsList.append(measures[i]+" "+ingredients[i])
                }
            } catch {
                print("Error.")
            }
        }
    }
}

#Preview {
    ContentView()
}
