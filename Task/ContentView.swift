//
//  ContentView.swift
//  Task
//
//  Created by 高本直矢 on 2022/06/07.
//

import SwiftUI



struct ContentView: View {
    @ObservedObject var userData = UserData()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(userData.tasks){ task in
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else{
                            return
                        }
                        
                        self.userData.tasks[index].checked.toggle()
                    })
                    {
                    ListRow(task: task.title, isCheck: task.checked)
                    }
                    
                }
                Text("+")
                    .font(.title)
            }
            .navigationTitle(Text("Tasks"))
            .navigationBarItems(trailing:Text("Delete"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
