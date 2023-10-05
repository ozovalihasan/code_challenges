# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
  necessary_count = nums.size / 3
  nums.tally.select {|_, count| count > necessary_count }.keys
end