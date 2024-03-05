# @param {String} str
# @return {Integer}
def minimum_length(str)
  left = 0
  right = str.size - 1

  while str[left] == str[right] && left < right
    char = str[left]
    left += 1 while str[left] == char
    right -= 1 while str[right] == char
  end

  diff = right - left
  diff.negative? ? 0 : (diff + 1)
end