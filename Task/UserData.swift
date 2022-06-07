//
//  UserData.swift
//  Task
//
//  Created by 高本直矢 on 2022/06/07.
//

import SwiftUI

class UserData: ObservableObject{
    @Published var tasks = [
        Task(title: "料理", checked: false),
        Task(title: "散歩", checked: false),
        Task(title: "筋トレ", checked: true)
    ]
}
