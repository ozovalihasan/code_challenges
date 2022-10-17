# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  nums.each_cons(2).all? {|first, second| first >= second } ||
    nums.each_cons(2).all? {|first, second| first <= second }
end