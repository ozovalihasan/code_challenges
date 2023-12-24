# @param {String} str
# @return {Integer}
def min_operations(str)
  counts = [0, 0]

  str.each_char.with_index do |chr, index|
    counts[(index + chr.to_i) % 2] += 1
  end

  counts.min
end
