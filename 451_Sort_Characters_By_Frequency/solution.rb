# @param {String} s
# @return {String}
def frequency_sort(s)
  s.chars.group_by(&:itself).values.sort_by(&:size).reverse.join
end