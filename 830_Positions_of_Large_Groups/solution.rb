# @param {String} s
# @return {Integer[][]}
def large_group_positions(s)
  result = [[-1]]
  s += "#"
  s.each_char.with_index do |char, index|
    unless char == s[index - 1]
      result.last << index - 1
      result << [index]
    end
  end  
  
  result.pop
  result.reject! {|pair| pair.last - pair.first < 2 }
end