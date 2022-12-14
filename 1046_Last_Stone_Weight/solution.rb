# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  stones.sort!

  until stones.size == 1
    result = stones.pop - stones.pop
    stones.insert(stones.bsearch_index {|val| val >= result} || stones.size, result)
  end
  
  stones.last
end