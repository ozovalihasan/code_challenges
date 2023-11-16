# @param {String[]} nums
# @return {String}
def find_different_binary_string(nums)
  nums.map! { |num| num.to_i(2) } 
  result = nil
  (0...(2**nums.size)).each do |num|
    break (result = num) unless nums.include?(num)
  end

  result = result.to_s(2)
  ('0' * (nums.size - result.size)) << result
end
