//
//  NSManagedObjectContext+Extension.swift
//  Coffee+CoreData
//
//  Created by naseem on 25/11/2021.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
    static var current: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
