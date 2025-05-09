//
//  ContentView.swift
//  ToDoList
//
//  Created by Henrik Jones on 4/18/25.
//

import SwiftUI

struct ContentView: View {
    @State private var vm = TaskViewModel()
    @State private var isAdding = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.tasks) { task in
                    Text(task.title)
                }
            }
            .navigationTitle("To Do List")
            .toolbar {
                ToolbarItem {
                    Button {
                        isAdding.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isAdding) {
                AddTextView(vm: $vm)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
