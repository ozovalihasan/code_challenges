# @param {String} digits
# @return {String[]}
DIGIT_CHAR_PAIRS = {
  "2" => ["a", "b", "c"], 
  "3" => ["d", "e", "f"], 
  "4" => ["g", "h", "i"], 
  "5" => ["j", "k", "l"], 
  "6" => ["m", "n", "o"], 
  "7" => ["p", "q", "r", "s"], 
  "8" => ["t", "u", "v"], 
  "9" => ["w", "x", "y", "z"], 

}
def letter_combinations(digits)
  if digits.length > 1
    
    digits.chars.map { |digit| DIGIT_CHAR_PAIRS[digit] }.inject(&:product).map(&:join)
    
  elsif digits.length == 1

    DIGIT_CHAR_PAIRS[digits]

  else
    
    []

  end
end