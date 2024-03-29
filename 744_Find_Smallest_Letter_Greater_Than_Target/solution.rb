# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
  letters.bsearch {|letter| letter > target} || letters.first 
end