# @param {String} s
# @return {String}
def sort_vowels(str)
  vowels = []
  indices = [] 
  str.each_char.with_index do |char, index|
    if char.match?(/[aeiou]/i)
      vowels << char
      indices << index
    end
  end

  vowels.sort!

  indices.zip(vowels).each do |index, char|
    str[index] = char
  end

  str
end
