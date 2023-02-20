class TodoTracker
  def initialize
    @todo = []
  end

  def add_todo(task)
    @todo << task
  end

  def list
    return @todo
  end

  def complete(task)
    if @todo.include? task
      @todo.delete(task)
    else
      return "Task is not on the todo list"
    end
  end
end
