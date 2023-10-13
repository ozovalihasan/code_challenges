# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  2.upto(cost.size - 1) do |index|
    cost[index] += [cost[index - 1], cost[index - 2]].min
  end

  cost.last(2).min
end
