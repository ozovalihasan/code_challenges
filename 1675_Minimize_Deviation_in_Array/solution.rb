# @param {Integer[]} nums
# @return {Integer}
def minimum_deviation(nums)
  ref_num = find_reference_num(nums)
  prepare_nums(nums, ref_num)
  find_min_diff(nums, ref_num)
end

def find_reference_num(nums)
  nums.map do |num|
    num /= 2 while num.even?
      
    num
  end.max
end

def prepare_nums(nums, ref_num)
  nums.map! do |num|
    while num.even? && num > ref_num && (num / 2) >= ref_num
      num /= 2
    end

    num *= 2 if num.odd?
    num
  end

  nums << ref_num
  
  nums.sort!
  
end

def find_min_diff(nums, ref_num)
  result = [ diff(nums) ] 

  loop do
    break if nums.last.eql? ref_num

    half_of_last = nums.pop / 2
    nums.unshift half_of_last unless half_of_last >= nums.first
    
    result << diff(nums)
  end
  
  result.min
end

def diff(nums)
  nums.last - nums.first
end