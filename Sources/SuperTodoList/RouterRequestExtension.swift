//
//  RouterRequestExtension.swift
//  SuperTodoList
//
//  Created by Michael Vilabrera on 7/14/17.
//
//

import Foundation
import Kitura
import SwiftyJSON

extension RouterRequest {
    
    var json: JSON? {
        guard let body = self.body else {
            return nil
        }
        
        guard case let .json(json) = body else {
            return nil
        }
        
        return json
    }
}
