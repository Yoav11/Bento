//
//  IngredientRow.swift
//  Bento
//
//  Created by Yoav Nir on 10/01/2020.
//  Copyright © 2020 Yoav Nir. All rights reserved.
//

import SwiftUI

struct IngredientRow: View {
    @EnvironmentObject var ingredient: Ingredient
    
    var body: some View {
        HStack {
            Text(ingredient.name)
            Spacer()
            Text("x \(ingredient.quantity)")
            .foregroundColor(.gray)
        }
        .padding(.horizontal)
    }
}

struct IngredientRow_Previews: PreviewProvider {
    static var previews: some View {
        IngredientRow()
    }
}
