//
//  ContentView.swift
//  ToDoListApp
//
//  Created by رنيم القرني on 04/09/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ZStack {
                    List{
                        
                    }
                }
                Spacer()
                Button("+ New Task") {
                }
                .buttonStyle(.borderedProminent)
                .cornerRadius(30)
                .padding(30)
            }
            .navigationTitle("To do list")
        }
    }
}

#Preview {
    ContentView()
}
