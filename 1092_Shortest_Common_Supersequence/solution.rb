# @param {String} str1
# @param {String} str2
# @return {String}
def shortest_common_supersequence(str1, str2)
  memo = Array.new(str1.size + 1) { Array.new(str2.size + 1, 0) }
  str1.each_char.with_index do |char1, index1|
    str2.each_char.with_index do |char2, index2|
      memo[index1 + 1][index2 + 1] = if char1 == char2
                                       memo[index1][index2] + 1
                                     else
                                       [memo[index1][index2 + 1], memo[index1 + 1][index2]].max
                                     end
    end
  end
  
  memo[str1.size][str2.size]
  result = ''
  index1 = str1.size
  index2 = str2.size

  while index1.positive? || index2.positive?
    if index1.positive? && memo[index1][index2] == memo[index1 - 1][index2]
      result = str1[index1 - 1] + result
      index1 -= 1
    elsif index2.positive? && memo[index1][index2] == memo[index1][index2 - 1]
      result = str2[index2 - 1] + result
      index2 -= 1
    else
      result = str1[index1 - 1] + result
      index1 -= 1
      index2 -= 1
    end
  end

  result
end

