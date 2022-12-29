# @param {Integer[][]} tasks
# @return {Integer[]}
def get_order(tasks)
  tasks.map!.with_index { |task, index| Task.new(task, index) }

  tasks_groups = tasks.group_by(&:enqueue_time)
                      .map { |enqueue_time, tasks| TasksGroup.new(enqueue_time, tasks) }
                      .sort_by!(&:enqueue_time).reverse!
  
  queue = TaskQueue.new
  processed = []
  next_available_time = 0

  until tasks_groups.empty?
    tasks_group = tasks_groups.pop
  
    if next_available_time < tasks_group.enqueue_time 
     
      while queue.not_empty? && next_available_time < tasks_group.enqueue_time
        processed << queue.pop
        next_available_time += processed.last.process_time
      end

      if queue.empty? && next_available_time < tasks_group.enqueue_time
        next_available_time = tasks_group.enqueue_time
      end

    end
    
    tasks_group.tasks.each { |task| queue.add(task) }
    
    while tasks_groups.any? && tasks_groups.last.enqueue_time <= next_available_time
      queue.multiple_add(tasks_groups.pop.tasks)
    end
    
  end

  unless queue.empty?
    processed.concat( queue.all_tasks_sorted )
  end

  processed.map(&:index)
  
end

class TaskQueue
  attr_accessor :result
  def initialize
    @result = {}
  end

  def add(task)
    (result[task.process_time] ||= []) << task
  end

  def multiple_add(tasks)
    tasks.each {|task| add(task)}
  end

  def pop
    min_key_of_queue = result.keys.min
    popped_item = result[min_key_of_queue].min_by(&:index)

    result[min_key_of_queue].delete(popped_item)
    result.delete(min_key_of_queue) if result[min_key_of_queue].empty?
    popped_item
  end
  
  def empty?
    result.empty?
  end

  def not_empty?
    !empty?
  end

  def all_tasks_sorted
    result.values.flatten!.sort_by! {|task| [task.process_time, task.index]}
  end
end

class TasksGroup
  attr_reader :enqueue_time, :tasks

  def initialize(enqueue_time, tasks)
    @enqueue_time = enqueue_time
    @tasks = tasks
  end
  
end

class Task
  attr_reader :enqueue_time, :process_time, :index

  def initialize(task, index)
    @enqueue_time = task.first
    @process_time = task.last
    @index = index
  end
end