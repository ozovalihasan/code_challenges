# @param {Integer[]} banned
# @param {Integer} range_max
# @param {Integer} max_sum
# @return {Integer}
def max_count(banned, range_max, max_sum)
  sum = 0
  count = 0
  banned_nums = {}
  banned.each { |num| banned_nums[num] = true }
  
  1.upto(range_max) do |num|
    next if banned_nums[num]    

    sum += num
    break if sum > max_sum

    count += 1
  end

  count
end
