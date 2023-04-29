# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
  0.upto(s.size - 1) do |index|
    return true if (s[index..] + s[...index]) == goal
  end 

  false
end