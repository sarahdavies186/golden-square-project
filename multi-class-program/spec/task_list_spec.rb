require "task_list"

RSpec.describe TaskList do
  it "returns an empty list when no tasks have been added" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end
end
