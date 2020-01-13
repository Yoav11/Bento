//
//  QuantityButton.swift
//  Bento
//
//  Created by Yoav Nir on 13/01/2020.
//  Copyright © 2020 Yoav Nir. All rights reserved.
//

import SwiftUI

struct QuantityButton: View {
    @EnvironmentObject var ingredient: Ingredient
    
    var body: some View {
        HStack {
            Button(action: {
                self.ingredient.quantity-=1
            }) {
                Image(systemName: "minus")
                .foregroundColor(.blue)
            }
            
            Text("\(ingredient.quantity)")
            .frame(width: 30, height: 10)
            .padding(.horizontal, 5)
            Button(action: {
                self.ingredient.quantity+=1
            }) {
                Image(systemName: "plus")
                .foregroundColor(.blue)
            }
        }

    }
}

struct QuantityButton_Previews: PreviewProvider {
    static let ingredient = Ingredient(
        id: 0,
        name: "Carrot",
        imageName: "Carrot",
        quantity: 0
    )
    
    static var previews: some View {
        QuantityButton().environmentObject(ingredient)
    }
}
