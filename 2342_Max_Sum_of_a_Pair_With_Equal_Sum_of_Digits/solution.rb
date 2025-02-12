# @param {Integer[]} nums
# @return {Integer}
def maximum_sum(nums)
  digit_sums = Hash.new { |hash, key| hash[key] = [] }

  nums.each do |num|
    sum = num.digits.sum
    digit_sums[sum] << num
  end

  digit_sums.values.filter_map do |checked_nums|
    checked_nums.sort!.last(2).sum if checked_nums.size > 1
  end.max || -1
end
