//
//  TodoItem.swift
//  Task Manager
//
//  Created by Daniel Kim on 2/8/24.
//

import Foundation

struct Todo: Identifiable {
    let id = UUID()
    var name: String
    var deadline = Date()
    var isComplete: Bool
    
}
