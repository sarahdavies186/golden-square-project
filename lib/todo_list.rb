#completed with Konrad Dunski

class TodoList
  def initialize
    @tasks = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @tasks << todo
  end

  def incomplete
    return [] if @tasks.empty?
    @tasks[0].task
  end

  def complete
    completed_tasks = []
    completed_tasks_tasks = []
    @tasks.each { |task| completed_tasks << task if task.status == "complete" }
    completed_tasks.each { |task| completed_tasks_tasks << task.task }
    return completed_tasks_tasks
    return [] if @tasks[0].status == "incomplete"
  end

  def give_up!
    @tasks.each { |task| task.mark_done! }
    return true
  end
end
