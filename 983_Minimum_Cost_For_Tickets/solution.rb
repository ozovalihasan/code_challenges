# @param {Integer[]} days
# @param {Integer[]} costs
# @return {Integer}
def mincost_tickets(days, costs)
  total_costs = Hash.new(Float::INFINITY)
  total_costs[days.first] = 0
  costs_until_today = []
  
  (days.first).upto(days.last) do |today_number|
    costs_until_today << total_costs[today_number]
    
    if days.include? today_number
      min_cost_until_today = costs_until_today.min

      buy_ticket(min_cost_until_today, today_number, total_costs, costs[0], 1)
      buy_ticket(min_cost_until_today, today_number, total_costs, costs[1], 7)
      buy_ticket(min_cost_until_today, today_number, total_costs, costs[2], 30)
      
      costs_until_today = []
    end

  end
  
  total_costs.select {|day, _| day > days.last }.values.min
end

def buy_ticket(min_cost_until_today, today_number, total_costs, cost, ticket_length)
  total_costs[today_number + ticket_length] = [min_cost_until_today + cost, total_costs[today_number + ticket_length]].min
end