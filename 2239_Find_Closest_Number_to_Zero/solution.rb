# @param {Integer[]} nums
# @return {Integer}
def find_closest_number(nums)
  min = nums.map(&:abs).min
  ( nums.include? min ) ? min : -min
end