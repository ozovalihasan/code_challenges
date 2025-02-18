# @param {String} pattern
# @return {String}
def smallest_number(pattern)
  result = (1..(pattern.size + 1)).to_a.join
  
  groups = pattern.scan(/I+|D+/)
  index = 0
  groups.each do |group|
    group_size = group.size
    if group[0] == 'D'
      range = index..(index + group_size)
      result[range] = result[range].reverse 
    end

    index += group_size
  end

  result
end
