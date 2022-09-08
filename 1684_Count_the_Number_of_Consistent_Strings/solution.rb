# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
  hash = {}

  allowed.each_char {|char| hash[char] = true}
  
  words.count {|word| word.each_char.all? {|char| hash[char]} }
  
end