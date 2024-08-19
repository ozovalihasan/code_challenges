# @param {String} str
# @param {Integer} delete_count
# @return {Integer}
def get_length_of_optimal_compression(str, delete_count)
  @groups = str.chars.chunk(&:itself).map(&:last)
  @groups.map do |group|
    group_size = group.size
  end
  check_groups()
end
