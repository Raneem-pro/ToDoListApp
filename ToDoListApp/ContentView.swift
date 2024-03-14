//
//  ContentView.swift
//  ToDoListApp
//
//  Created by رنيم القرني on 04/09/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var tasks: [String] = []
    var body: some View {
        NavigationStack{
            VStack{
                ZStack {
                    List{
                        ForEach(tasks, id:\.self){ task in
                            Text(task)
                        }
                    }
                }
                Spacer()

                NavigationLink {
                    addTaskView(tasks:$tasks)
                } label: {
                  Text("+ New Task")
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
