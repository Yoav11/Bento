//
//  data.swift
//  Bento
//
//  Created by Yoav Nir on 10/01/2020.
//  Copyright © 2020 Yoav Nir. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit
import SwiftUI

let ingredientData: [Ingredient] = loadIngredient("ingredientData.json")

func loadIngredient<T: Decodable>(_ fileName: String) -> T {
    guard let fileURL = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("could not find file \(fileName)")
    }
    
    do {
        let data = try Data(contentsOf: fileURL)
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("could not decode file \(fileName)")
    }
}


