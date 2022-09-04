//
//  OrdersTableViewController.swift
//  HotCoffee
//
//  Created by Henrique Alves Batochi on 03/09/22.
//

import Foundation
import UIKit

class OrdersTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateOrders()
    }
    
    private func populateOrders() {
        
        guard let coffeeOrdersURL = URL(string: "https://guarded-retreat-82533.herokuapp.com") else {
            fatalError("URL was incorrect")
        }
        
        let resources = Resource<[Order]>(url: coffeeOrdersURL)
        
        Webservices().load(resource: resources) { result in
            
            switch result {
                case .success(let orders):
                   print(orders)
                case .failure(let error):
                   print(error)
            }
            
        }
    }
}
