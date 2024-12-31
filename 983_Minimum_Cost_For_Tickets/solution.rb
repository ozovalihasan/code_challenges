# @param {Integer[]} days
# @param {Integer[]} costs
# @return {Integer}
def mincost_tickets(days, costs)
  durations = [1, 7, 30]
  cost_pairs = costs.zip(durations)
  total_costs = Array.new(days.last + durations.last + 1, Float::INFINITY)
  total_costs[1] = 0
  last_checked_day = 1
  
  days.each do |day|
    current_cost = total_costs[last_checked_day..day].min 
    
    cost_pairs.each do |cost, duration|
      total_costs[day + duration] = [current_cost + cost, total_costs[day + duration]].min
    end

    last_checked_day = day + 1
  end
  
  total_costs.last(durations.last).min  
end
