# @param {Integer[]} capacity
# @param {Integer[]} rocks
# @param {Integer} additional_rocks
# @return {Integer}
def maximum_bags(capacity, rocks, additional_rocks)
  return capacity.size if (rocks.sum + additional_rocks) >= capacity.sum

  needed_rocks = rocks.map.with_index { |rock, index| capacity[index] - rock }
  
  needed_rocks.sort!.each_with_index.inject(0) do |total_need, (need, index)|

    return index if (total_need += need) > additional_rocks

    total_need
  end
  
end