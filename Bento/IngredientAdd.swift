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
                
                NavigationLink(destination: Home()) {
                    Text("create ingredient")
                        .foregroundColor(.red)
                    
                }
                .buttonStyle(PlainButtonStyle())
                .padding()
                
                
            }
            
            .navigationBarTitle("add groceries", displayMode: .inline)
            .navigationBarItems(trailing:
                Button("Done") {
                    self.presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(.red)
                .padding()
            )
        }
    }
}

struct IngredientAdd_Previews: PreviewProvider {
    static let ingredient = Ingredient(
        id: 0,
        name: "Carrot",
        imageName: "Carrot",
        quantity: 0
    )
    
    static var previews: some View {
        IngredientAdd(ingredients: ingredientData).environmentObject(ingredient)
    }
}
