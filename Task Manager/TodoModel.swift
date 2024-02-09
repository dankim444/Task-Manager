//
//  TodoModel.swift
//  Task Manager
//
//  Created by Daniel Kim on 2/8/24.
//

import Foundation

class TodoModel: ObservableObject {
    @Published private(set) var todos: [Todo] = []
    
    func createTodo(todo: Todo) {
        todos.append(todo)
    }
    
    func toggleComplete(id: UUID) {
        if let index = todos.firstIndex(where: { $0.id == id }) {
            if todos[index].isComplete {
                todos[index].isComplete = false
            } else {
                var todo = todos.remove(at: index)
                todo.isComplete = true
                todos.append(todo)
            }
        }
    }
    
    
}
