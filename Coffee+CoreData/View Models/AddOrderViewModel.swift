//
//  AddOrderViewModel.swift
//  Coffee+CoreData
//
//  Created by naseem on 25/11/2021.
//

import Foundation

struct AddOrderViewModel {
    var name: String = ""
    var type: String = ""
    
    func saveOrder() {
        CoreDataManager.shared.saveOrder(name: self.name, type: self.type)
    }
}
