# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def check_subarray_sum(nums, k)
  last = 0
  hash = Hash.new(0)
  hash[0] = 1

  while num = nums.pop
    prev, last = last, ((last + num) % k)
    hash[last] += 1

    next if hash[last] == 1

    return true if hash[last] > 2 || prev != last
  end

  false
end