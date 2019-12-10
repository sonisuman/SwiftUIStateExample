//
//  ContentView.swift
//  SwiftUIStateBinding
//
//  Created by Soni Suman on 10/12/19.
//  Copyright © 2019 Soni Suman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State var tasks = [Task]()
    
    private  func addTask() {
        self.tasks.append(Task(name: "clean home"))
    }
    
    @State var name = "soni"
    var body: some View {
        //        VStack {
        //            Text(name)
        //
        //            Button(action: {
        //                self.name = "suman"
        //            }) {
        //                Text("change name")
        //            }
        //        }
        
        List {
            Button(action: addTask) {
                Text("Add Tasks")
            }
            ForEach(tasks) {
                task in
                Text(task.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
