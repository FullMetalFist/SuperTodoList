//
//  CentralAPI.swift
//  SuperTodoList
//
//  Created by Michael Vilabrera on 7/14/17.
//
//

import Foundation
import Kitura
import LoggerAPI
import SwiftyJSON
import Dispatch

public class CentralAPI {
    
    public let router = Router()
    
    var tasks: [Task] = []
    
    let queue = DispatchQueue(label: "com.fullmetalfist.todo")
    
    public init() {
        router.all("*", middleware: BodyParser())
        router.get("/v1/tasks", handler: handleGetTasks)
        router.post("/v1/tasks", handler: handleAddTask)
        
        tasks.append(
            Task(id: UUID(), description: "Check emails", createdAt: Date(), isCompleted: false)
        )
    }
}

extension CentralAPI {
    
    func handleGetTasks(request: RouterRequest,
                        response: RouterResponse,
                        next: @escaping() -> Void) throws {
        defer {
            next()
        }
        
        Log.info("Hello")
        
        response.status(.OK).send(json: JSON(tasks.stringValuePairs))
    }
    
    func handleAddTask(request: RouterRequest,
                        response: RouterResponse,
                        next: @escaping() -> Void) throws {
        defer {
            next()
        }
        
        guard let json = request.json else {
            response.status(.badRequest)
            next()
            return
        }
        
        let description = json["description"].stringValue
        
        let newTask = Task(id: UUID(), description: description, createdAt: Date(), isCompleted: false)
        
        queue.sync {
            tasks.append(newTask)
            Log.info("Adding a task")
            
            response.status(.OK).send("Adding tasks")
        }
    }
}
