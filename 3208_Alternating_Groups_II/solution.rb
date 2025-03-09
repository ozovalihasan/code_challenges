# @param {Integer[]} colors
# @param {Integer} k
# @return {Integer}
def number_of_alternating_groups(colors, k)
  groups = colors.chunk_while { |previous_el, next_el| previous_el != next_el }.map(&:size)
  groups[0] += groups.pop if colors.first != colors.last && groups.size > 1

  if groups.first == colors.size && colors.size.even?
    colors.size
  else
    groups.filter_map { |group| (group - k + 1) if group >= k }.sum
  end
end
