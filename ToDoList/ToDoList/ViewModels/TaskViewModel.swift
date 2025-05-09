//
//  TaskViewModel.swift
//  ToDoList
//
//  Created by Henrik Jones on 5/9/25.
//

import Foundation

@Observable
class TaskViewModel {
    var tasks = [Task]()
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
}
