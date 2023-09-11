# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  groups = {}
  group_sizes.uniq.each {|size| groups[size] = []}
  group_sizes.each_with_index {|size, index| groups[size] << index}

  result = []
  groups.each {|size, group| result.concat group.each_slice(size).to_a}
  result
end