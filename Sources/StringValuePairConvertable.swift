//
//  StringValuePairConvertable.swift
//  SuperTodoList
//
//  Created by Michael Vilabrera on 7/14/17.
//
//

import Foundation

typealias StringValuePair = [String: Any]

protocol StringValuePairConvertible {
    var stringValuePairs: StringValuePair { get }
}

extension Array where Element :StringValuePairConvertible {
    var stringValuePairs: [StringValuePair] {
        return self.map { $0.stringValuePairs }
    }
}
