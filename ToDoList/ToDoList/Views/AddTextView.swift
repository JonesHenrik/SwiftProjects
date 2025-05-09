//
//  AddTextView.swift
//  ToDoList
//
//  Created by Henrik Jones on 5/9/25.
//

import SwiftUI

// Add a title
// Add a description
// Save the task

struct AddTextView: View {
    @State private var vm = TaskViewModel()
    
    @State private var title: String = ""
    @State private var description: String = ""
    var body: some View {
        NavigationStack {
            List {
                TextField("Enter Task Title", text: $title)
                TextField("Enter Description", text: $description)
            }
            .navigationTitle("Add Task")
            .toolbar {
                Button {
                    vm.addTask(task: newTask())
                } label: {
                    Text("Save")
                }
            }
        }
        
    }
    func newTask() -> Task {
        Task(title: title, description: description)
    }
}

#Preview {
    AddTextView()
}
