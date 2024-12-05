# @param {String} start
# @param {String} target
# @return {Boolean}
def can_change(start, target)
  return false if start.count('RL') != target.count('RL')
  
  start = start.chars
  target = target.chars
  
  start_index = 0
  target.each_with_index do |target_char, target_index|
    next if target[target_index] == '_'

    start_index += 1 while start[start_index] == '_'

    if (start[start_index] != target_char) || 
       (start_index > target_index && (start[start_index] != 'L')) || 
       (start_index < target_index && (start[start_index] != 'R'))
      return false
    end

    start_index += 1
  end

  true
end
