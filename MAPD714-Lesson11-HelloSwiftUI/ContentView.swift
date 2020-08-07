//
//  ContentView.swift
//  MAPD714-Lesson11-HelloSwiftUI
//
//  Created by Tom Tsiliopoulos on 2020-07-30.
//  Copyright © 2020 Centennial College. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var recipes = [RecipeModel]()
    var body: some View {
            VStack{
                List(recipes, id: \.self) { recipe  in
                    RecipeView(recipe: recipe)
                }
            }
    }
}

struct ContentPreviewHelper {
    static func mockRecipes() -> [RecipeModel] {
        var recipes = [RecipeModel]()
        recipes.append(RecipeModel(id: UUID(),
            name: "Italian Pizza Chicken", origin: "Italian"))
        recipes.append(RecipeModel(id: UUID(),
            name: "Greek Pasta Bake", origin: "Greek"))
        recipes.append(RecipeModel(id: UUID(),
            name: "Hearty Parsnip Soup", origin: "British"))
        recipes.append(RecipeModel(id: UUID(),
            name: "Honey & Soy Salmon", origin: "Chinese"))
        return recipes
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipes: ContentPreviewHelper.mockRecipes())
    }
}



