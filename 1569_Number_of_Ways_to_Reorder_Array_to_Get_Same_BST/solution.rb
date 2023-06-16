# @param {Integer[]} nums
# @return {Integer}
def num_of_ways(nums)
  result = check_nums(nums) 
  (result - 1)
end

def check_nums(nums)
  return 1 if nums.empty?
  nums_left = nums.select {|num| num < nums.first }
  nums_right = nums.select {|num| num > nums.first }
  pair = [nums_left.size, nums_right.size].sort

  return (check_nums(nums_left) * check_nums(nums_right) * 1) % (10**9 + 7) if pair.first.zero?

  result = (1..(pair.last + 1)).to_a
  
  (pair.first - 1).times do
    sum = 0
    result = result.map {|el| sum += el}
  end

  (check_nums(nums_left) * check_nums(nums_right) * result.last) % (10**9 + 7)
end