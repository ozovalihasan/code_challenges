# @param {Integer} num
# @param {Integer} order
# @return {String}
AVAILABLE_CHARS = ['a', 'b', 'c'].freeze
VALID_NEXT_CHARS = {
  'a' => ['b', 'c'],
  'b' => ['a', 'c'],
  'c' => ['a', 'b']
}.freeze

def get_happy_string(length, order)
  max_possible_strings = 3 * 2**(length - 1)
  return '' if order > max_possible_strings

  order -= 1
  next_char_choices = (length - 1).times.map do 
    choice = order % 2
    order /= 2
    choice
  end

  result = ""
  result += AVAILABLE_CHARS[order % 3]
  next_char_choices.reverse_each do |choice|
    result << VALID_NEXT_CHARS[result[-1]][choice]
  end
  result
end