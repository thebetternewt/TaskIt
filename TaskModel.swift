//
//  TaskModel.swift
//  TaskIt
//
//  Created by Christopher R. Eady on 12/9/14.
//  Copyright (c) 2014 Chris Eady. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel) // Allows obj-c to interact with task model.
class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
