//
//  AddIngredient.swift
//  Bento
//
//  Created by Yoav Nir on 13/01/2020.
//  Copyright © 2020 Yoav Nir. All rights reserved.
//

import SwiftUI

struct IngredientAdd: View {
    var ingredients: [Ingredient]
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(ingredients, id: \.self) { ingredient in
                        IngredientAddRow().environmentObject(ingredient)
                        .buttonStyle(BorderlessButtonStyle())
                    }
                }
                Button("create ingredient") {
                    
                }
                
            }
            
            .navigationBarTitle("add groceries", displayMode: .inline)
            .navigationBarItems(trailing:
                Button("Done") {
                    self.presentationMode.wrappedValue.dismiss()
                }
                .padding()
            )
        }
    }
}

struct IngredientAdd_Previews: PreviewProvider {
    static var previews: some View {
        IngredientAdd(ingredients: ingredientData)
    }
}
