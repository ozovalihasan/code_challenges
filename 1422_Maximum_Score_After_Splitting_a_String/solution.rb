# @param {String} s
# @return {Integer}
def max_score(s)
  result = 0
  previous = s.count("1")
  0.upto(s.size - 2) do |index|
    previous += s[index] == "0" ? 1 : -1

    result = previous if previous > result
  end

  result
end