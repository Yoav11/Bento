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
                Text("minus")
            }
            Text("\(ingredient.quantity)")
            Button(action: {
                self.ingredient.quantity+=1
            }) {
                Text("plus")
            }
        }
    }
}

struct QuantityButton_Previews: PreviewProvider {
    static var previews: some View {
        QuantityButton()
    }
}
