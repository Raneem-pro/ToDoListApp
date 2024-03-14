//
//  addTaskView.swift
//  ToDoListApp
//
//  Created by رنيم القرني on 04/09/1445 AH.
//

import SwiftUI

struct addTaskView: View {
    @State var taskTitle: String = ""
    @State var taskDetails: String = ""
    @State var dueDate: Date = .init()
    var body: some View {
        NavigationStack{
            VStack {
                Text("Title")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Title", text: $taskTitle)
                          .padding()
                Text("Descreption")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Descreption", text: $taskDetails, axis: .vertical)
                          .padding()
                DatePicker(selection: $dueDate,in: Date()...,displayedComponents: .date) {
                               Text("Due Date")
                           }
                .padding()
                Button(" Add Task") {
                    
                }
                .buttonStyle(.borderedProminent)
                .cornerRadius(30)
                .padding(30)
                Spacer()
            }
            .navigationTitle("Add New Task")
            .textFieldStyle(WhiteBorder())
        }


    }
}

#Preview {
    addTaskView()
}
