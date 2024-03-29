//
//  UserTask.swift
//  Task
//
//  Created by 高本直矢 on 2022/06/07.
//

import SwiftUI

struct Task:Identifiable, Equatable {
    let id = UUID()
    var title: String
    var checked: Bool
    
    init(title: String, checked: Bool){
        self.title = title
        self.checked = checked
    }
}
