# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
  {"b" => 1, "a" => 1, "l" => 2, "o" => 2, "n" => 1}.map do |char, val| 
    text.count(char) / val 
  end.min
end