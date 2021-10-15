import SwiftUI

struct ListDynamic2: View {
    @State private var toggleStatus = true
    
    var listData: [ToDoItem] = [
        ToDoItem(task: "Take out trash", imageName: "trash.circle.fill"),
        ToDoItem(task: "Pick up the kids", imageName: "person.2.fill"),
        ToDoItem(task: "Wash the car", imageName: "car.fill")
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notifications")
                    }
                }
                
                
                Section(header: Text("To Do Tasks")) {
                    ForEach(listData) { item in
                        NavigationLink(destination: Text(item.task)) {
                            HStack {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveItem)
                }
            }
            .navigationTitle("Home")
            .navigationBarTitle(Text("To Do List"))
            .navigationBarItems(trailing: EditButton())
//            .navigationBarItems(trailing: Button(action: addTask, label: {
//                Text("Add")
//            }))
        }
    }
    
    func addTask() {
        print("add task")
    }
    
    func deleteItem(at offsets: IndexSet) {
//        listData.remove(atOffsets: offsets)
    }
    
    func moveItem(from source: IndexSet, to destination: Int) {
        print("move")
    }
}

struct ListDynamic2_Previews: PreviewProvider {
    static var previews: some View {
        ListDynamic2()
    }
}
