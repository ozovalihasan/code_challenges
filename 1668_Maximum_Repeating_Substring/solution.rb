# @param {String} sequence
# @param {String} word
# @return {Integer}
def max_repeating(sequence, word)
  result = 0
  
  while sequence.include?(word * (result + 1))
    result += 1
  end
  
  result
end