//
//  Sandwich.swift
//  Sandwiches
//
//  Created by Deep Sathwara on 2020-08-07.
//

import Foundation

struct Sandwich: Identifiable{
    
    var id = UUID()
    var name: String
    var ingredientCount: Int
    var isSpicy: Bool
    
    var ImageName: String { return name }
    var thumbnailName:String { return name + "Thumb" }
}

let testData = [
    Sandwich(name: "Club", ingredientCount: 4 ,isSpicy: false),
    Sandwich(name: "Pastrami on rye", ingredientCount: 4,isSpicy: true),
    Sandwich(name: "French dip", ingredientCount: 3,isSpicy: false),
    Sandwich(name: "Ice cream sandwich", ingredientCount: 2,isSpicy: false),
    Sandwich(name: "Hot dog", ingredientCount: 2,isSpicy: true),
    Sandwich(name: "Avocado toast", ingredientCount: 3,isSpicy: true),
    Sandwich(name: "Cheese", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "Vegetable",ingredientCount: 6,isSpicy: false),
    
]

