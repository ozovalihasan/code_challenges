# @param {String} str_first
# @param {String} str_second
# @return {Boolean}
def check_inclusion(str_first, str_second)
  return false if str_first.size > str_second.size

  window_size = str_first.size
  chars = str_first.split("").tally
  chars.default = 0

  str_second = str_second.split("")

  str_second.take(window_size).each do |char|
    chars[ char ] -= 1
  end
  
  return true if chars.values.all? 0

  check_inclusion_by_shifting_window(str_second, window_size, chars)
end

def check_inclusion_by_shifting_window(str_second, window_size, chars)
  str_second.drop(window_size).each_with_index do |char, index|
    chars[ char ] -= 1
    chars[ str_second[ index ] ] += 1

    return true if chars.values.all? 0
  end

  false
end