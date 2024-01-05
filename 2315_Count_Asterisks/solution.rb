# @param {String} str
# @return {Integer}
def count_asterisks(str)
  str.split("|").map!.with_index.sum { |char, index| index.even? ? char.count('*') : 0 }
end
