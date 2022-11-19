# @param {Integer[][]} trees
# @return {Integer[][]}
def outer_trees(trees)
  
  group_by_first = trees.group_by(&:first).each do |(key, value)|
    value.map! {|_, last| last}.sort!
  end
  group_by_first_keys = group_by_first.keys.sort
  return trees if group_by_first_keys.size == 1

  result = []
  index = 0
  selected_x = group_by_first_keys.first
  selected_y = group_by_first[selected_x].last
  group_by_first[selected_x].each do |y|
    result << [selected_x, y]
  end
  
  loop do
    hash = {}
    group_by_first_keys[index..].each do |x|
      (hash[slope(x, group_by_first[x].last, selected_x, selected_y )] ||= []) << [x, group_by_first[x].last]
    end

    hash[hash.keys.max].each { |coordinate| result << coordinate }
    selected_x, selected_y = hash[hash.keys.max].max_by(&:first)

    index = group_by_first_keys.bsearch_index {|val| val >= selected_x}
    if index == (group_by_first_keys.size - 1)
      
      selected_x = group_by_first_keys.last
      selected_y = group_by_first[selected_x].last
      group_by_first[selected_x][...-1].each do |y|
        
        result << [selected_x, y]
      end
      break
    end

  end

  loop do
    
    
    hash = {}
    group_by_first_keys[..index].each do |x|
      (hash[slope(x, group_by_first[x].first, selected_x, selected_y )] ||= []) << [x, group_by_first[x].first]
    end

    hash[hash.keys.max].each do |coordinate|
      result << coordinate
    end
    selected_x, selected_y = hash[hash.keys.max].min_by(&:first)
    
    index = group_by_first_keys.bsearch_index {|val| val >= selected_x}
    if index == 0
      break
    end
  end

  result.uniq

end

def slope(x1, y1, x2, y2) 
  return -Float::INFINITY if x1 == x2 && y1 == y2
  (y2 - y1) / (x2 - x1).to_f
end