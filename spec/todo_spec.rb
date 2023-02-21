require "todo"

RSpec.describe Todo do
  it "returns only task" do
    todo_1 = Todo.new("clean my cats bum", "incomplete")
    expect(todo_1.task).to eq "clean my cats bum"
  end

  it "marks an incomplete task as complete" do
    todo_1 = Todo.new("clean my cats bum", "incomplete")
    todo_1.mark_done!
    expect(todo_1.status).to eq "complete"
  end

  it "marks an incomplete task as complete" do
    todo_1 = Todo.new("clean my cats bum", "complete")
    expect(todo_1.done?).to eq true
  end
end
