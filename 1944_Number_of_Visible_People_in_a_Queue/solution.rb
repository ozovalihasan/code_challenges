# @param {Integer[]} heights
# @return {Integer[]}
def can_see_persons_count(heights)
  possible_heights = [ heights.pop, Float::INFINITY ]
  result = [0]

  loop do
    height = heights.pop
    break unless height
    
    index = possible_heights.bsearch_index {|pos_height| pos_height > height }
    
    result.unshift(index + ((index == possible_heights.size - 1) ? 0 : 1))
    
    possible_heights.slice!(0, index )
    
    possible_heights.unshift height        
  end

  result
end