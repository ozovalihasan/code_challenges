# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
def can_complete_circuit(gas, cost)
  return -1 if cost.sum > gas.sum

  tank = 0
  start_index = 0
  gas.size.times do |index|
    tank += gas[index] - cost[index]
    if tank < 0
      tank = 0
      start_index = index + 1
    end
  end
  
  start_index
end