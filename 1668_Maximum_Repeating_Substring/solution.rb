# @param {String} sequence
# @param {String} word
# @return {Integer}
def max_repeating(sequence, word)
  result = 0
  
  until sequence.empty?
    if sequence.start_with?(word)
      word_counts = sequence.match(/^(#{ word })+/)[0].scan(word).size
      result = word_counts if word_counts > result 
    end

    sequence[0] = ""
  end

  result
end