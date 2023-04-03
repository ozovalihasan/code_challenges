# @param {Integer[]} people
# @param {Integer} limit
# @return {Integer}
def num_rescue_boats(people, limit)
  people.sort!
  
  index1 = 0
  index2 = people.size - 1

  result = 0
  while index1 <= index2
    index1 += 1 if ( people[index1] + people[index2] ) <= limit
      
    result += 1
    index2 -= 1
  end

  result
end