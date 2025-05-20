//
//  ContentView.swift
//  ToDoList
//
//  Created by Henrik Jones on 4/18/25.
//

import SwiftUI

struct ContentView: View {
    @State private var vm = TaskViewModel()
    @State private var isPresenting = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.tasks) { task in
                    NavigationLink {
                        TaskDetailView(task: task)
                    } label: {
                        HStack {
                            Text(task.title)
                            Spacer()
                            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                        }
                    }
                    .swipeActions(edge: .trailing) {
                        Button("Complete") {
                            task.isCompleted.toggle()
                        }
                    }
                }
            }
            .navigationTitle("To Do List")
            .toolbar {
                ToolbarItem {
                    Button {
                        isPresenting.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isPresenting) {
                AddTextView(vm: $vm, isPresenting: $isPresenting)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
