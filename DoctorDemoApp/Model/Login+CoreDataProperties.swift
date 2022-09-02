//
//  Login+CoreDataProperties.swift
//  DoctorDemoApp
//
//  Created by Josh on 31/08/22.
//
//

import Foundation
import CoreData


extension Login {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Login> {
        return NSFetchRequest<Login>(entityName: "Login")
    }

    @NSManaged public var data: NSObject?

}

extension Login : Identifiable {

}
