# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
  nums.tally.select { |num, count| count > 1 }.keys
end