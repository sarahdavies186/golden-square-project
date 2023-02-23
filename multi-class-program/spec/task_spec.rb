require "task"

RSpec.describe Task do
  it "adds a task" do
    task_1 = Task.new("Party in the USA")
    expect(task_1.task).to eq "Party in the USA"
  end
end
