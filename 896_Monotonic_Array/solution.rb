# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  if nums.first >= nums.last
    nums.each_cons(2).all? {|first, second| first >= second } 
  else
    nums.each_cons(2).all? {|first, second| first <= second }
  end
end