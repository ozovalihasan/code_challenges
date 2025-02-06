# @param {Integer[]} nums
# @return {Integer}
def tuple_same_product(nums)
  products = nums.combination(2).map { |first_num, second_num| first_num * second_num }.tally
  products.values.sum { |count| (count - 1) * count } * 4
end
