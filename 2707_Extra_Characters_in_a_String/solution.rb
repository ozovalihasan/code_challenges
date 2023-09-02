# @param {String} s
# @param {String[]} dictionary
# @return {Integer}
def min_extra_char(s, dictionary)
  str = s
  result = []
  dictionary_with_char_group = dictionary.group_by {|word| word[0]}

  0.upto(str.size) {|index| result[index] = index}
  0.upto(str.size - 1) do |index|
    char = str[index]
    dictionary_with_char_group[char]&.each do |word|
      if str[index..].start_with?(word) && result[index] < result[index + word.size] 
        result[index + word.size] = result[index]  
      end
    end

    result[index + 1] = [result[index + 1], result[index] + 1].min
  end

  result[str.size]
end