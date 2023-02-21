require "todo_list"
require "todo"

RSpec.describe TodoList do
  it "returns a list of incomplete tasks" do
    todo_list = TodoList.new
    todo_1 = Todo.new("clean my cats bum", "incomplete")
    todo_list.add(todo_1)
    expect(todo_list.incomplete).to eq "clean my cats bum"
  end

  it "returns an empty array if no incomplete tasks" do
    todo_list = TodoList.new
    expect(todo_list.incomplete).to eq []
  end

  it "returns an empty array if no complete tasks" do
    todo_list = TodoList.new
    todo_1 = Todo.new("clean my cats bum", "incomplete")
    todo_list.add(todo_1)
    expect(todo_list.complete).to eq []
  end

  it "returns a list of complete tasks" do
    todo_list = TodoList.new
    todo_1 = Todo.new("clean my cats bum", "incomplete")
    todo_2 = Todo.new("clean my cats paws", "complete")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    expect(todo_list.complete).to eq ["clean my cats paws"]
  end

  it "returns a list of complete tasks" do
    todo_list = TodoList.new
    todo_1 = Todo.new("clean my cats bum", "complete")
    todo_2 = Todo.new("clean my cats paws", "complete")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    expect(todo_list.complete).to eq ["clean my cats bum", "clean my cats paws"]
  end

  it "updates the status to complete and returns the list" do
    todo_list = TodoList.new
    todo_1 = Todo.new("clean my cats bum", "incomplete")
    todo_list.add(todo_1)
    todo_1.mark_done!
    expect(todo_list.complete).to eq ["clean my cats bum"]
  end

  it "marks all todos as complete" do
    todo_list = TodoList.new
    todo_1 = Todo.new("clean my cats bum", "incomplete")
    todo_2 = Todo.new("clean my cats paws", "incomplete")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    todo_1.mark_done!
    todo_2.mark_done!
    expect(todo_list.give_up!).to eq true
  end
end
