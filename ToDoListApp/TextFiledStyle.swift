//
//  TextFiledStyle.swift
//  ToDoListApp
//
//  Created by رنيم القرني on 04/09/1445 AH.
//

import Foundation
import SwiftUI
struct WhiteBorder: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.black, lineWidth:2)
            )
    }
}
