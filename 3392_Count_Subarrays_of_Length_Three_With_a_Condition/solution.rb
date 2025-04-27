# @param {Integer[]} nums
# @return {Integer}
def count_subarrays(nums)
  nums.each_cons(3).count do |first, second, third|
    next if second.odd?

    (second / 2) == (first + third)
  end
end