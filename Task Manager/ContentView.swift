//
//  ContentView.swift
//  Task Manager
//
//  Created by Daniel Kim on 2/8/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var todoModel: TodoModel
    
    @State private var newTodoName = ""
    
    var body: some View {
        VStack {
            TextField("Enter new task", text: $newTodoName)
                .padding()
            
            Button(action: addNewTodo) {
                Text("add text")
            }
            .padding()
            .disabled(newTodoName.isEmpty)
            
            List(todoModel.todos) { todo in
                TodoItemView(todo: todo)
            }
        }
    }
    
    private func addNewTodo() {
        // add todo to the end of the list
        let newTodo = Todo(name: newTodoName, isComplete: false)
        todoModel.createTodo(todo: newTodo)
        newTodoName = ""
    }
}

#Preview {
    ContentView()
        .environmentObject(TodoModel())
}
