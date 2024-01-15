# @param {Integer[]} nums
# @return {Integer}
def min_increment_for_unique(nums)
  nums.sort!

  possible_num = 0
  moves = 0
  nums.each do |num|
    if possible_num >= num
      moves += possible_num - num
    else
      possible_num = num
    end
    
    possible_num += 1
  end

  moves
end
