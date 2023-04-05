# @param {Integer[]} nums
# @return {Integer}
def minimize_array_value(nums)
  total = 0
  max = 0
  
  nums.each_with_index do |num, index|
    total += num
    
    if total > (max * (index + 1))
      max = ((total.to_f) / (index + 1)).ceil
    end
  end

  max
end