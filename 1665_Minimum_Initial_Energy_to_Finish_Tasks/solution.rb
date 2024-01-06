# @param {Integer[][]} tasks
# @return {Integer}
def minimum_effort(tasks)
  tasks.sort_by! { |task| task[1] - task[0] }
  
  necessary_effort = 0
  tasks.each_index do |actual_effort, minimum_effort|
    necessary_effort = [necessary_effort + actual_effort, minimum_effort].max
  end

  necessary_effort
end
