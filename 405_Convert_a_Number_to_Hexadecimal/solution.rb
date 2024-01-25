CHARS = ("0".."9").to_a + ("a".."f").to_a

# @param {Integer} num
# @return {String}
def to_hex(num)
  return '0' if num.zero?

  hex = ''

  num = (2**32) + num if num < 0
  
  while num != 0
    hex << CHARS[num % 16]
    num /= 16
  end

  hex.reverse
end
