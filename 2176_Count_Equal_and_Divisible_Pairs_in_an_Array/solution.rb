# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_pairs(nums, k)
  indices = Hash.new { |h, k| h[k] = [] }
  nums.map.with_index.sum do |num, index|
    sum = indices[num].sum do |prev_index|
          (prev_index * index) % k == 0 ? 1 : 0
        end

    indices[num] << index
    sum
  end
end