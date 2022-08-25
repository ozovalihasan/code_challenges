# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  return nums.map{|num| num * num } if nums.first >= 0
  return nums.reverse.map{|num| num * num } if nums.last < 0
  
  result = []
  nums.map!{|num| num * num }
  index1 = 0
  index2 = nums.size - 1
  
  until index1 > index2
    if nums[index2] > nums[index1]
      result << nums[index2]
      index2 -= 1
    else
      result << nums[index1]
      index1 += 1
    end
  end
  
  result.reverse
end

##################
## 2. Solution
##################
# # @param {Integer[]} nums
# # @return {Integer[]}
# def sorted_squares(nums)
#   result = []
#   nums.map!(&:abs2)
  
#   until nums.empty?
#     if nums.last > nums.first
#       result << nums.pop
#     else
#       result << nums.shift
#     end
#   end
  
#   result.reverse
# end


##################
## 3. Solution
##################
# # @param {Integer[]} nums
# # @return {Integer[]}
# def sorted_squares(nums)
#   nums.map {|num| num * num}.sort
# end