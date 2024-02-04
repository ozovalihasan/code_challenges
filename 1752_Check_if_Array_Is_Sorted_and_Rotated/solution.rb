# @param {Integer[]} nums
# @return {Boolean}
def check(nums)
  nums << nums.first
  nums.each_cons(2).count {|first, second| second < first} <= 1
end