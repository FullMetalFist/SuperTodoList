//
//  Task.swift
//  SuperTodoList
//
//  Created by Michael Vilabrera on 7/14/17.
//
//

import Foundation

struct Task {
    
    let id:             UUID
    let description:    String
    let createdAt:      Date
    let isCompleted:    Bool
}

extension Task: Equatable {
    static func == (lhs: Task, rhs: Task) -> Bool {
        if  lhs.id == rhs.id,
            lhs.description == rhs.description,
            lhs.createdAt == rhs.createdAt,
            lhs.isCompleted == rhs.isCompleted {
            return true
        }
        return false
    }
}

extension Task: StringValuePairConvertible {
    var stringValuePairs: StringValuePair {
        return [
            "id"            : "\(self.id)",
            "description"   : self.description,
            "createdAt"     : self.createdAt.timeIntervalSinceReferenceDate,
            "isCompleted"   : self.isCompleted
        ]
    }
}
