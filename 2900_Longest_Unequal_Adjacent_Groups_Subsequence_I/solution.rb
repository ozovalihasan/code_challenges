# @param {String[]} words
# @param {Integer[]} groups
# @return {String[]}
def get_longest_subsequence(words, groups)
  current_group = nil
  result = []
  words.zip(groups).map do |word, group|
    if group != current_group
      result << word 
      current_group = group
    end
  end
  result
end