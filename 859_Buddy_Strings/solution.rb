# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
  s_chars_count = s.chars.tally
  goal_chars_count = goal.chars.tally
  
  return false if s_chars_count != goal_chars_count
  return true if s == goal && s_chars_count.size < s.length

  s.chars.zip(goal.chars).count {|char1, char2| char1 != char2} == 2
end