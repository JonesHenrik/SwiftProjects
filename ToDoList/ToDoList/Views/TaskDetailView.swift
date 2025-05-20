//
//  TaskDetailView.swift
//  ToDoList
//
//  Created by Henrik Jones on 5/9/25.
//

import SwiftUI

struct TaskDetailView: View {
    var task: Task
    
    var body: some View {
        VStack {
           Text(task.title)
                .font(.headline)
            Text(task.description)
                .font(.body)
        }
    }
}


