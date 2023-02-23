require "task_list"
require "task"

RSpec.describe "task integration" do
  context "when a task is added" do
    it "adds to the task list" do
      task_list = TaskList.new
      task_1 = Task.new("Party in the USA")
      task_list.add(task_1)
      expect(task_list.all).to eq [task_1]
    end
  end

  context "when multiple tasks are added" do
    it "adds all to the task list" do
      task_list = TaskList.new
      task_1 = Task.new("Party in the USA")
      task_2 = Task.new("Dance in the club")
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all).to eq [task_1, task_2]
    end
  end
end
