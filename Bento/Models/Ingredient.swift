//
//  Ingredient.swift
//  Bento
//
//  Created by Yoav Nir on 10/01/2020.
//  Copyright © 2020 Yoav Nir. All rights reserved.
//
import SwiftUI

class Ingredient: Hashable, Codable, Identifiable, ObservableObject {
    let id: Int
    var name: String
    var imageName: String
    @Published var quantity: Int
    
    init(id: Int, name: String, imageName: String, quantity: Int) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.quantity = quantity
    }
    
    static func ==(lhs: Ingredient, rhs: Ingredient) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        imageName = try container.decode(String.self, forKey: .imageName)
        quantity = try container.decode(Int.self, forKey: .quantity)
    }

    enum CodingKeys: CodingKey {
        case id, name, imageName, quantity
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(imageName, forKey: .imageName)
        try container.encode(quantity, forKey: .quantity)
    }
}


