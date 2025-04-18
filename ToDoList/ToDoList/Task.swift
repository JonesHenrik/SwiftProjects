//
//  ItemModel.swift
//  ToDoList
//
//  Created by Henrik Jones on 4/18/25.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var description: String?
    var isCompleted = false
}
