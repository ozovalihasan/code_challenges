# @param {String} str
# @return {Integer}
def maximum_length(str)
  groups = str.chars.slice_when { |before, after| before != after }
             .group_by(&:first)
             .transform_values { |group| group.map(&:size) }

  max_lengths = groups.values.map do |sizes|
    first, second, third = sizes.max(3)
    second ||= 0
    third ||= 0

    [
      first - 2,
      second == first ? second - 1 : second,
      third
    ].max
  end

  result = max_lengths.max
  result.zero? ? -1 : result
end
