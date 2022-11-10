# @param {String} s
# @return {String}
def remove_duplicates(s)
  stack = []
  
  s.each_char do |char|
    char == stack.last ? stack.pop : stack << char
  end  
  
  stack.join
end