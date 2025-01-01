# @param {String} str
# @return {Integer}
def max_score(str)
  result = 0
  previous = str.count('1')
  0.upto(str.size - 2) do |index|
    previous += str[index] == '0' ? 1 : -1

    result = previous if previous > result
  end

  result
end
