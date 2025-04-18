//
//  ContentView.swift
//  ToDoList
//
//  Created by Henrik Jones on 4/18/25.
//

import SwiftUI

struct ContentView: View {
    var vm = ContentViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .toolbar {
                ToolbarItem {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
