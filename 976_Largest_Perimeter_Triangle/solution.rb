# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
  nums.sort.reverse.each_cons(3) do |longest, medium, shortest|
    return longest + medium  + shortest if (shortest + medium) > longest
  end

  0
end


##############
## Solution 2
##############
# # @param {Integer[]} nums
# # @return {Integer}
# def largest_perimeter(nums)
  
#   nums.sort!
#   sum = nums.last(2).sum
#   last = 0

#   while nums[2]
#     sum += nums[-3] - last
#     last = nums.pop

#     return sum if (sum - last) > last
#   end

#   0
# end