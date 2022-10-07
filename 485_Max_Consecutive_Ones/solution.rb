# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  nums.each_with_object([0]) {|num, result| num == 1 ? result[-1] += 1 : result << 0 }.max
end

#################
## Solution 2
#################
## @param {Integer[]} nums
## @return {Integer}
#def find_max_consecutive_ones(nums)
#  nums.slice_after(&:zero?).map {|arr| arr.count 1}.max
#end

#################
## Solution 3
#################
## @param {Integer[]} nums
## @return {Integer}
#def find_max_consecutive_ones(nums)
#  (nums.join.split("0").max_by(&:length) || "").length
#end