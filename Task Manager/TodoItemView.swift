//
//  TodoItemView.swift
//  Task Manager
//
//  Created by Daniel Kim on 2/8/24.
//

import SwiftUI

struct TodoItemView: View {
    @EnvironmentObject var todoModel: TodoModel
    var todo: Todo
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(todo.name)
                Spacer()
                Button(action: {
                    todoModel.toggleComplete(id: todo.id)
                }) {
                    if todo.isComplete {
                        Image("checkmark.square.fill")
                    } else {
                        Image(systemName: "square")
                    }
                }
            }
            Text("\(todo.deadline)")
                .foregroundStyle(.secondary)
                .font(.caption)
        }
        .opacity(todo.isComplete ? 0.25 : 1)
        .animation(.default, value: todo.isComplete)
    }
}

#Preview {
    @State var todo = Todo(name: "preview todo", isComplete: false)
    return TodoItemView(todo: todo)
}
