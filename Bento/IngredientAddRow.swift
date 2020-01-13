//
//  IngredientAddRow.swift
//  Bento
//
//  Created by Yoav Nir on 13/01/2020.
//  Copyright © 2020 Yoav Nir. All rights reserved.
//

import SwiftUI

struct IngredientAddRow: View {
    @EnvironmentObject var ingredient: Ingredient
    
    var body: some View {
        HStack {
            Text(ingredient.name)
            Spacer()
            QuantityButton().environmentObject(ingredient)
        }
        .padding()
    }
}

struct IngredientAddRow_Previews: PreviewProvider {
    static var previews: some View {
        IngredientAddRow()
    }
}
