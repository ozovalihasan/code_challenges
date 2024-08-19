# @param {String} word
# @return {Integer}
def num_different_integers(word)
  (word.scan(/[^\d]*(\d+)[^\d]*/)).flatten.map(&:to_i).uniq.count
end