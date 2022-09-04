//
//  AddCoffeeOrderViewModel.swift
//  HotCoffee
//
//  Created by Henrique Alves Batochi on 04/09/22.
//

import Foundation

struct addCoffeeOrderViewModel {
    
    var name: String?
    var email: String?
    
    var types: [String] {
        return CoffeeType.allCases.map { $0.rawValue.capitalized }
    }
    
    var sizes: [String] {
        return CoffeeSize.allCases.map { $0.rawValue.capitalized }
    }
}
