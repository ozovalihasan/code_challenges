# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  hash = {}

  s.chars.each do |char|
    if hash[char] 
      next
    elsif s.count(char) == 1
      return s.index(char)
    else
      hash[char] = true
    end
  end
  
  -1
end