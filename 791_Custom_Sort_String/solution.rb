# @param {String} order
# @param {String} str
# @return {String}
def custom_sort_string(order, str)
  chars_count = str.chars.tally
  result = order.chars.map { |char| char * (chars_count.delete(char) || 0) }.join
  result + chars_count.map { |char, count| char * count }.join
end
