//
//  DataControllar.swift
//  ToDoListApp
//
//  Created by رنيم القرني on 05/09/1445 AH.
//

import Foundation
import CoreData

class DataControllar : ObservableObject{
    let container = NSPersistentContainer(name: "TasksModel")
    
    init(){
        container.loadPersistentStores{ descreption, error  in
            if let error = error {
                print("Faild to load data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext){
        do{
            try context.save()
            print("Data saved")
        }catch{
            print("Data not saved")
        }
    }
    
    
    func addTask(_ taskTitle: String , _ taskDescreption: String ,_ dueDate : Date ,_ context: NSManagedObjectContext){
        let task = TasksItems(context: context)
        task.title = taskTitle
        task.taskDescription = taskDescreption
        task.completedDate = dueDate
        
        save(context: context)
    }
    
    func editTask(_ task : TasksItems  ,_ taskTitle: String , _ taskDescreption: String ,_ dueDate : Date ,_ context: NSManagedObjectContext){
        task.title = taskTitle
        task.taskDescription = taskDescreption
        task.completedDate = dueDate
        
        save(context: context)
    }
}
