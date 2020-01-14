//
//  Home.swift
//  Bento
//
//  Created by Yoav Nir on 14/01/2020.
//  Copyright © 2020 Yoav Nir. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView {
            Calendar()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("calendar")
                }
            IngredientList(ingredients: ingredientData)
                .tabItem {
                    Image(systemName: "archivebox")
                    Text("fridge")
                }
            Text("recipies")
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("recipies")
                }
            Text("settings")
                .tabItem {
                    Image(systemName: "gear")
                    .foregroundColor(.red)
                    Text("settings")
                }
        }
        .accentColor(.red)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
