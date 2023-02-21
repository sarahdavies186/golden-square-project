#1 Returns a list of incomplete todos
todo_list = TodoList.new
todo_1 = Todo.new("clean my cats bum", "incomplete")
todo_list.add(todo_1)
expect(todo_list.incomplete).to eq ["clean my cats bum"]

#2 Returns an empty array if no complete tasks
todo_list = TodoList.new
todo_1 = Todo.new("clean my cats bum", "incomplete")
todo_list.add(todo_1)
expect(todo_list.complete).to eq []

#3 Returns a list of complete tasks
todo_list = TodoList.new
todo_1 = Todo.new("clean my cats bum", "incomplete")
todo_2 = Todo.new("clean my cats paws", "complete")
todo_list.add(todo_1)
todo_list.add(todo_2)
expect(todo_list.complete).to eq ["clean my cats paws"]

#4 Updates the status to complete and returns list
todo_list = TodoList.new
todo_1 = Todo.new("clean my cats bum", "incomplete")
todo_list.add(todo_1)
todo_1.mark_done!
expect(todo_list.complete).to eq ["clean my cats bum"]

#5 Marks all todos as complete
todo_list = TodoList.new
todo_1 = Todo.new("clean my cats bum", "incomplete")
todo_2 = Todo.new("clean my cats paws", "incomplete")
todo_list.add(todo_1)
todo_list.add(todo_2)
expect(todo_list.give_up!).to eq nil
