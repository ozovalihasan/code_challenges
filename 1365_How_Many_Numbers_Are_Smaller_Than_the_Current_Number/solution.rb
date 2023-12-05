# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
  result = {}
  total_count = 0

  nums.tally.sort.each do |num, count|
    result[num] = total_count  
    total_count += count
  end

  nums.map { |num| result[num] }
end
