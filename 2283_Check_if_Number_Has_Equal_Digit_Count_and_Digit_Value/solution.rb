# @param {String} num
# @return {Boolean}
def digit_count(num)
  counts = num.chars.tally
  counts.transform_keys!(&:to_i)
  counts.default = 0

  num.each_char.with_index.all? do |char, index|
    counts[index] == char.to_i
  end
end