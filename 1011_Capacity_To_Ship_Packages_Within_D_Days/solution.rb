# @param {Integer[]} weights
# @param {Integer} days
# @return {Integer}
def ship_within_days(weights, days)
  sum = weights.sum
  min_capacity = [sum / days, weights.max].max

  (min_capacity..min_capacity * 2).bsearch do |checked_capacity|
    given_capacity_enough?(checked_capacity, weights, days)
  end
end

def given_capacity_enough?(checked_capacity, weights, days)
  capacity_rest = checked_capacity
  total_day = 1

  weights.each do |weight| 
    if capacity_rest < weight
      capacity_rest = checked_capacity
      total_day += 1
    end
    
    capacity_rest -= weight
  end

  total_day <= days 
end