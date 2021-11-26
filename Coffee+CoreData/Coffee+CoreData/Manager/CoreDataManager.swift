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
}
