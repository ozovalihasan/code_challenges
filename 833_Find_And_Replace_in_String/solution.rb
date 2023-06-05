# @param {String} s
# @param {Integer[]} indices
# @param {String[]} sources
# @param {String[]} targets
# @return {String}
def find_replace_string(s, indices, sources, targets)
  result = s
  checked_sources = indices.zip(sources.zip(targets)).sort_by!(&:first)

  checked_sources.reverse_each do |index, (source, target)|
    result[index...index + source.size] = target if s[index...index + source.size] == source
  end

  result
end