//
//  addTaskView.swift
//  ToDoListApp
//
//  Created by رنيم القرني on 04/09/1445 AH.
//

import SwiftUI

struct addTaskView: View {
    @Environment(\.managedObjectContext) var manageObjectContext
    @Environment(\.dismiss) var dismiss
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
                    DataControllar().addTask(taskTitle, taskDetails, dueDate, manageObjectContext)
                    dismiss()
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
    addTaskView()
}
