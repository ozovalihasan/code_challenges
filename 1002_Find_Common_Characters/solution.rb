# @param {String[]} words
# @return {String[]}
def common_chars(words)
  words.map! {|word| word.chars.tally}

  result = {}
  words.first.keys.each {|key| result[key] = []} 

  words.each do |word| 
    result.each do |key, value| 
      word[key] ? result[key] << word[key] : result.delete(key) 
    end
  end

  result.map {|key, value| [key] * value.min }.flatten
end