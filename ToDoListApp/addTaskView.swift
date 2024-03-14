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
    @Binding var tasks: [String]
    var body: some View {
        NavigationStack{
            VStack {
                Text("Title")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Title", text: $taskTitle)
                          .modifier(TextFieldModifierView())
                          .padding()
                Text("Descreption")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Descreption", text: $taskDetails, axis: .vertical)
                    .modifier(TextFieldModifierView())
                          .padding()
                DatePicker(selection: $dueDate,in: Date()...,displayedComponents: .date) {
                               Text("Due Date")
                           }
                .padding()
                Button(" Add Task") {
                    tasks.append(taskTitle)
                    
                }
                .buttonStyle(.borderedProminent)
                .cornerRadius(30)
                .padding(30)
                Spacer()
            }
            .navigationTitle("Add New Task")
        }


    }
}

#Preview {
    addTaskView(tasks: .constant([]))
}
