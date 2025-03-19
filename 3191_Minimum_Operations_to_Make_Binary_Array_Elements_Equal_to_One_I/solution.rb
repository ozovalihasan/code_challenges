# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
  return 0 if nums.none? 0

  result = 0
  (nums.size - 1).downto(2) do |index|
    num = nums.pop
    if num.even?
      nums[-1] += 1
      nums[-2] += 1

      result += 1
    end
  end 

  nums.all?(&:odd?) ? result : -1
end