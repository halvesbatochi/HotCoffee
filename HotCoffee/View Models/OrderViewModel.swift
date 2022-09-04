//
//  OrderViewModel.swift
//  HotCoffee
//
//  Created by Henrique Alves Batochi on 04/09/22.
//

import Foundation

class OrderListViewModel {
    
    var ordersViewModel:  [OrderViewModel]
    
    init() {
        self.ordersViewModel = [OrderViewModel]()
    }
}

extension OrderListViewModel {
    
    func orderviewModel(at index: Int) -> OrderViewModel {
        return self.ordersViewModel[index]
    }
}

struct OrderViewModel {
    let order: Order
}

extension OrderViewModel {
    
    var name: String {
        return self.order.name
    }
    
    var email: String {
        return self.order.email
    }
    
    var type: String {
        return self.order.type.rawValue.capitalized
    }
    
    var size: String {
        return self.order.type.rawValue.capitalized
    }
}
