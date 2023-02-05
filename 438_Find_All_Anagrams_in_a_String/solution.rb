# @param {String} str_first
# @param {String} str_second
# @return {Integer[]}
def find_anagrams(str_first, str_second)
  window_size = str_second.size
  chars = str_second.split("").tally
  chars.default = 0

  str_first = str_first.split("")

  str_first.take(window_size).each do |char|
    chars[ char ] -= 1
  end
  
  result = []
  result << 0 if chars.values.all? 0

  check_inclusion_by_shifting_window(str_first, window_size, chars, result)

  result
end

def check_inclusion_by_shifting_window(str_first, window_size, chars, result)
  str_first.drop(window_size).each_with_index do |char, index|
    chars[ char ] -= 1
    chars[ str_first[ index ] ] += 1

    result << (index + 1) if chars.values.all? 0
  end
end    