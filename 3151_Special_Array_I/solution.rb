# @param {Integer[]} nums
# @return {Boolean}
def is_array_special(nums)
  nums.each_cons(2).all? { |cons_nums| cons_nums.sum.odd? }
end
