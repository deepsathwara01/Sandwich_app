//
//  SandwichStore.swift
//  Sandwiches
//
//  Created by Deep Sathwara on 2020-08-10.
//

import Foundation

class SandwichStore: ObservableObject {
    @Published var sandwich: [Sandwich]
    init(sandwich: [Sandwich] = []){
        self.sandwich = sandwich
    }
    
}
let testStore = SandwichStore(sandwich: testData)
