# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
  count_all = secret.chars.tally.each.sum do |char, count|
    [guess.count(char), count].min 
  end

  count_A = secret.chars.each_with_index.count do |char,index|
    char == guess[index]
  end
  
  count_A.to_s << "A" << (count_all - count_A).to_s << "B"
end