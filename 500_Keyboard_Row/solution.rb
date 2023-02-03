# @param {String[]} words
# @return {String[]}
def find_words(words)
  rows = ["qwertyuiop", "asdfghjkl", "zxcvbnm"]

  result = []
  
  while chars = rows.pop
    result.concat( words.select {|word| word.downcase.tr(chars, "").empty? } )
  end

  result
end