//
//  ContentView.swift
//  TodoApp
//
//  Created by Hoang Luong on 22/5/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var description = ""
    @State private var incompleteItems = ["coding", "typing"]
    @State private var doneItems = [String]()
    
    
    var body: some View {
        NavigationView {
            List {
                Section("Incomplete") {
                    ForEach(0..<incompleteItems.count, id: \.self) { index in
                            HStack {
                                Text(incompleteItems[index])
                                
                                Button {
                                    doneItems.insert(incompleteItems[index], at: 0)
                                    incompleteItems.remove(at: index)
                                    
                                } label: {
                                    Image(systemName: "checkmark.circle")
                                }

                            }
                    }
                }
                
                
                Section("Done") {
                    ForEach(doneItems, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .navigationTitle("ToDo List")
            .buttonStyle(BorderlessButtonStyle())
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button("Add Items", action: {} )
                }
            }
        }
    }
    
    func isComplete(item: String) -> Bool {
       return true
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
