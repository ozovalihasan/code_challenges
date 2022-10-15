# @param {String} s
# @return {String}
def frequency_sort(s)
  s.chars.tally.sort_by(&:last).reverse.map {|key, value| key * value}.join
end