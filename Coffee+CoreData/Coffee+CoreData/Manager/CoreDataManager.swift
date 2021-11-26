//
//  CoreDataManager.swift
//  Coffee+CoreData
//
//  Created by naseem on 25/11/2021.
//

import Foundation
import CoreData

class CoreDataManager {
    static let shared = CoreDataManager(moc: NSManagedObjectContext.current)
    
    var moc: NSManagedObjectContext
    
   private init(moc: NSManagedObjectContext) {
        self.moc = moc
    }
    
    func getAllOrders() -> [Order] {
        var orders = [Order]()
        let orderRequest: NSFetchRequest<Order> = Order.fetchRequest()
        do {
            orders = try self.moc.fetch(orderRequest)
        } catch let error as NSError {
            print(error)
        }
        return orders
    }
    
    func saveOrder(name: String, type: String) {
        let order = Order(context: self.moc)
        order.name = name
        order.type = type
        
        do {
            try self.moc.save()
        } catch let error as NSError {
            print(error)
        }
    }
}
