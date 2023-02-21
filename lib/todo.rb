class Todo
  def initialize(task, status) # task is a string
    @task = task
    @status = status
  end

  def task
    # Returns the task as a string
    return @task
  end

  def status
    return @status
  end

  def mark_done!
    @status = "complete"
  end

  def done?
    return @status == "complete" ? true : false
  end
end
