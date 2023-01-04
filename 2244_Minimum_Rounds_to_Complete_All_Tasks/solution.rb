# @param {Integer[]} tasks
# @return {Integer}
def minimum_rounds(tasks)
  tasks_values = tasks.tally.values

  return -1 if tasks_values.include? 1

  tasks_values.sum { |val| (val + 2) / 3 }
end