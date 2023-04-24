# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  stones.sort!
  until stones.size == 1
    remain_stone = stones.pop - stones.pop
    index = stones.bsearch_index {|stone| stone >= remain_stone} || stones.size
    stones.insert( index, remain_stone )
  end
  stones.last
end