# @param {Integer[]} nums
# @return {Integer}
def maximum_product(nums)
  nums.sort!

  [ 
    nums.last(3), 
    nums.first(2) << nums.last
  ].map {|arr| arr.inject(&:*) }.max
end