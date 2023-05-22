//
//  ContentView.swift
//  TodoApp
//
//  Created by Hoang Luong on 22/5/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("I love Tin!!!!!")
            Text("I love Tammy!!!!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
