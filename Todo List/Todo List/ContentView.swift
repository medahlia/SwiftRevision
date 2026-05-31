import SwiftUI


struct ContentView: View {
    @State var currentTodo = ""
    @State var todos: [Item] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("New todo...", text: $currentTodo)
                        .textFieldStyle(.roundedBorder)
                    
                    Button(action: {
                        guard !currentTodo.isEmpty else { return }
                        todos.append(Item(todo: currentTodo))
                        currentTodo = ""
                        save()
                    }) {
                        Image(systemName: "text.badge.plus")
                    }
                    .padding(.leading, 5)
                }.padding()
                
                List {
                    ForEach(todos) { todoEntry in
                        Text(todoEntry.todo)
                    }.onDelete(perform: delete)
                }
            }
            .navigationTitle("Todo List")
        }.onAppear(perform: load)
    }
    
    private func save() {
        UserDefaults.standard.set(try? PropertyListEncoder().encode(self.todos), forKey: "myTodosKey")
    }
    
    private func load() {
        if let todosData = UserDefaults.standard.value(forKey: "myTodosKey") as? Data {
            if let todosList = try? PropertyListDecoder().decode(Array<Item>.self, from: todosData) {
                self.todos = todosList
            }
        }
    }
    
    private func delete(at offset: IndexSet) {
        self.todos.remove(atOffsets: offset)
        save()
    }
}

#Preview {
    ContentView()
}
