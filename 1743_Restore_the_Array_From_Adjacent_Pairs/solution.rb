# @param {Integer[][]} adjacent_pairs
# @return {Integer[]}
def restore_array(adjacent_pairs)
  @possible_next = {}

  adjacent_pairs.each do |pair|
    @possible_next[pair[0]] ||= [] 
    @possible_next[pair[0]] << pair[1]
    @possible_next[pair[1]] ||= [] 
    @possible_next[pair[1]] << pair[0]
  end
  
  num = @possible_next.select { |_, connected| connected.size == 1 }.keys.first
  check_next(num).reverse
end

def check_next(num)
  return [num] if @possible_next[num].empty?

  next_num = @possible_next[num].first
  @possible_next[next_num].delete(num)
  check_next(next_num) << num
end
