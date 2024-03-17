# @param {String} s
# @param {String} t
# @param {Integer} max_cost
# @return {Integer}
def equal_substring(s, t, max_cost)
  s = s.chars.map(&:ord)
  t = t.chars.map(&:ord)
  differences = s.zip(t).map {|char1, char2| (char1 - char2).abs}

  count = 0
  sum = 0
  s.length.times do |index|
    loop do
      return count unless s[index + count]
      
      sum += differences[index + count]

      sum <= max_cost ? (count += 1) : break
    end 
    sum -= differences[index]
  end
  
  count
end