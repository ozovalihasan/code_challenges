# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  
  result = []
  
  previous_index = -Float::INFINITY
  next_index = s.index c
  
  0.upto(s.length - 1) do |index|
    result << [ index - previous_index, next_index - index ].min

    if next_index == index
      previous_index = next_index
      next_index = s.index(c, previous_index + 1) || Float::INFINITY
    end
  end

  result
end