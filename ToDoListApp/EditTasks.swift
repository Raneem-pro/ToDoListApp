//
//  EditTasks.swift
//  ToDoListApp
//
//  Created by رنيم القرني on 04/09/1445 AH.
//

import SwiftUI

struct EditTasks: View {
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
                Button("Update") {
                    
                }
                .buttonStyle(.borderedProminent)
                .cornerRadius(30)
                .padding(30)
                Spacer()
            }
            .navigationTitle("Edit Task")
            
        }
    }
}

struct TextFieldModifierView: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.black, lineWidth:2)
            )
    }
}

#Preview {
    EditTasks()
}
