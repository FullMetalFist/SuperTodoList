//
//  TaskDatabase.swift
//  SuperTodoList
//
//  Created by Michael Vilabrera on 7/14/17.
//
//

import Foundation


class TaskDatabase {
    
    var tasks: [Task] = []
    
    func getAllTasks(onCompletion: ([Task]) -> Void) {
        
        onCompletion(tasks)
    }
    
    func addTask(task: Task, onCompletion: (Task) -> Void) {
        
        tasks.append(task)
        onCompletion(task)
    }
}
