require "todo_tracker"

RSpec.describe TodoTracker do
  context "when there are no tasks" do
    it "returns an empty list" do
      todo_tracker = TodoTracker.new
      expect(todo_tracker.list).to eq []
    end
  end

  context "when one task has been added" do
    it "returns a list of the tasks" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("write in journal")
      expect(todo_tracker.list).to eq ["write in journal"]
    end
  end

  context "when multiple tasks have been added" do
    it "returns a list of all tasks" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("write in journal")
      todo_tracker.add_todo("go food shopping")
      expect(todo_tracker.list).to eq ["write in journal", "go food shopping"]
    end
  end

  context "when a task is complete" do
    it "removes task from the list" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("write in journal")
      todo_tracker.complete("write in journal")
      expect(todo_tracker.list).to eq []
    end

    it "removes task from the list, but keeps tasks still to complete" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("write in journal")
      todo_tracker.add_todo("go food shopping")
      todo_tracker.complete("write in journal")
      expect(todo_tracker.list).to eq ["go food shopping"]
    end
  end

  context "when a task is not on the list" do
    it "fails to complete it" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("go food shopping")
      expect(
        todo_tracker.complete("write in journal"),
      ).to eq "Task is not on the todo list"
    end
  end
end
