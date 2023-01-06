# @param {Integer[]} costs
# @param {Integer} coins
# @return {Integer}
def max_ice_cream(costs, coins)
  return costs.size if coins >= costs.sum

  sum = 0
  costs.sort!.each_with_index do |cost, index|
    sum += cost
    return index if sum > coins
  end
end