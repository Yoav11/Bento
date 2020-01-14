//
//  IngredientList.swift
//  Bento
//
//  Created by Yoav Nir on 10/01/2020.
//  Copyright © 2020 Yoav Nir. All rights reserved.
//

import SwiftUI

struct IngredientList: View {
    var ingredients: [Ingredient]
    
    @State var showEdit = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(ingredients, id: \.self) { ingredient in
                    IngredientRow().environmentObject(ingredient)
                }
            }
            .navigationBarTitle("Fridge", displayMode: .inline)
            .navigationBarItems(trailing: HStack {
               Spacer()
                Button(action: {
                    self.showEdit.toggle()
                }) {
                    Image(systemName: "plus")
                    .resizable()
                    .frame(width:15, height: 15)
                    .foregroundColor(.red)
                    .padding(.horizontal)
                }
                .padding()
                .sheet(isPresented: $showEdit) {
                    IngredientAdd(ingredients: self.ingredients)
                }
            })
        }
    }
}

struct IngredientList_Previews: PreviewProvider {
    static var previews: some View {
        IngredientList(ingredients: ingredientData)
    }
}
