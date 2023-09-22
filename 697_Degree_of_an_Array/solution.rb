# @param {Integer[]} nums
# @return {Integer}
def find_shortest_sub_array(nums)
  num_indices = {}
  nums.each_with_index { |num, index| (num_indices[num] ||= []) << index }

  degree = num_indices.values.map(&:size).max
  num_indices.values.filter_map {|indices| indices.last - indices.first + 1 if indices.size == degree}.min
end