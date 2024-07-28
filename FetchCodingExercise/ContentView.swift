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
    @State private var meal: Meal?
    var body: some View {
        NavigationView {
            List {
                ForEach(desserts?.meals ?? [], id: \.strMeal) { meal in
                    Text("\(meal.strMeal)")
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

#Preview {
    ContentView()
}
