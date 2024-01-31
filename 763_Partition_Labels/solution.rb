# @param {String} str
# @return {Integer[]}
def partition_labels(str)
  last_indices = {}
  str.each_char.with_index do |char, index|
    last_indices[char] = index
  end

  parts = []
  last_index = 0
  first_index = 0
  str.each_char.with_index do |char, index|
    last_index = last_indices[char] if last_indices[char] > last_index

    if last_index == index
      parts << (last_index - first_index + 1)
      first_index = last_index = index + 1
    end
  end

  parts
end
