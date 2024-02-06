# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  return "0" if nums.all? 0

  largest_size = nums.max.to_s.size
  nums.map(&:to_s)
    .sort_by { |num| num * ((largest_size / num.size) + 1)}
    .reverse
    .join
end