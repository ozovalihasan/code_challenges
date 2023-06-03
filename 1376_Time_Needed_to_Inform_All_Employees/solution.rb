# @param {Integer} n
# @param {Integer} head_id
# @param {Integer[]} manager
# @param {Integer[]} inform_time
# @return {Integer}
def num_of_minutes(n, head_id, manager, inform_time)
  @inform_time = inform_time
  @employees = []
  
  manager.each_with_index do |manager_of_employee, employee|
    next if manager_of_employee == -1

    (@employees[manager_of_employee] ||= []) << employee
  end
  
  @max_time = 0
  check_manager(head_id, 0)
  @max_time
end

def check_manager(manager_id, time)
  return if @employees[manager_id].nil?

  time += @inform_time[manager_id] 
  @max_time = time if time > @max_time 
  
  @employees[manager_id].each do |employee_id|
    check_manager(employee_id, time)
  end
end