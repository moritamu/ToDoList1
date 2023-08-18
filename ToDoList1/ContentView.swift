//
//  ContentView.swift
//  ToDoList1
//
//  Created by MsMacM on 2023/08/18.
//

import SwiftUI

struct TaskData: Identifiable {
    var title: String
    var completed: Bool
    var id = UUID()
}

struct ContentView: View {
    @State var taskData = [
        TaskData(title: "ジョギングをする", completed: false),
        TaskData(title: "縄跳びをする", completed: false),
        TaskData(title: "腹筋をする", completed: false),
        TaskData(title: "本屋に行く", completed: false),
        TaskData(title: "自転車で散歩する", completed: false),
        TaskData(title: "さあ何しよう", completed: false),
        TaskData(title: "今日の仕事", completed: false)
    ]
    
    var body: some View {
        NavigationStack {
            List(0..<taskData.count, id:\.self) { index in
                Button{
                    taskData[index].completed.toggle()
                } label: {
                    HStack {
                        Image(systemName: taskData[index].completed ? "checkmark.circle.fill" : "circle")
//                        三項演算子を使う
                        Text(taskData[index].title)
                    }
                }
                .foregroundColor(.black)
            }
            .navigationTitle("TODOリスト")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
