# @param {Integer[]} piles
# @param {Integer} k
# @return {Integer}
def min_stone_sum(piles, k)
  group_piles = piles.group_by {|num| Math.log2(num).ceil} 

  max_key = group_piles.keys.max
  until (k - group_piles[max_key].size) < 0
    k -= group_piles[max_key].size
    
    group_piles[max_key - 1] = [] if group_piles[max_key - 1].nil?
    group_piles[max_key - 1].concat(
      group_piles.delete(max_key).map! do |num|
        (num / 2.0).ceil
      end
    )
    
    max_key = group_piles.keys.max
    return piles.size if max_key.negative?
  end
  
  if k > 0
    group_piles[max_key - 1] = [] if group_piles[max_key - 1].nil?
    group_piles[max_key - 1].concat(
      group_piles[max_key].sort!.pop(k).map! do |num|
        (num / 2.0).ceil
      end
    )
  end

  group_piles.values.map(&:sum).sum
end
