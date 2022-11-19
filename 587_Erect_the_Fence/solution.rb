# @param {Integer[][]} trees
# @return {Integer[][]}
def outer_trees(trees)
  
  group_by_first = trees.group_by(&:first).each do |_, coordinates|
    coordinates.map! {|_, last| last}.sort!
  end
  
  return trees if group_by_first.size == 1

  group_by_first_keys = group_by_first.keys.sort

  result = []
  index = 0
  selected_x = group_by_first_keys.first
  group_by_first[selected_x].each do |y|
    result << [selected_x, y]
  end
  
  loop do
    hash = {}
    group_by_first_keys[index..].each do |x|
      (hash[slope(x, group_by_first[x].last, selected_x, group_by_first[selected_x].last )] ||= []) << [x, group_by_first[x].last]
    end

    hash[hash.keys.max].each { |coordinate| result << coordinate }
    selected_x = hash[hash.keys.max].max_by(&:first).first

    
    index = group_by_first_keys.bsearch_index {|val| val >= selected_x}
    break if group_by_first_keys.size - 1 == index
  end

  group_by_first[selected_x].each do |y|
    result << [selected_x, y]
  end

  loop do
    hash = {}
    group_by_first_keys[..index].map do |x|
      (hash[slope(x, group_by_first[x].first, selected_x, group_by_first[selected_x].first )] ||= []) << [x, group_by_first[x].first]
    end

    hash[hash.keys.max].each do |coordinate|
      result << coordinate
    end
    selected_x = hash[hash.keys.max].min_by(&:first).first
    
    index = group_by_first_keys.bsearch_index {|val| val >= selected_x}
    break if index.zero?
  end

  result.uniq

end

def slope(x1, y1, x2, y2) 
  return -Float::INFINITY if x1 == x2 && y1 == y2
  (y2 - y1) / (x2 - x1).to_f
end