# @param {String} str
# @param {Integer[]} spaces
# @return {String}
def add_spaces(str, spaces)
  spaces.unshift(0)
  spaces << str.size
  
  result = spaces.each_cons(2).map do |start_point, end_point|
    str.slice(start_point, end_point - start_point)
  end
  
  result.join(' ')
end
