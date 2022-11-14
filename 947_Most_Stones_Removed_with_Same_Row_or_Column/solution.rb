# @param {Integer[][]} stones
# @return {Integer}
def remove_stones(stones)

  @checked = {}

  @group_by_first = stones.group_by(&:first)
  @group_by_second = stones.group_by(&:last)

  @not_remove = 0
  
  stones.each_with_index do |stone, index|
    @not_remove += 1 unless @checked[stone]
    check_stones(stone, index)
  end

  stones.size - @not_remove
    
end

def check_stones(stone, index)
  
  unless @checked[stone]
    
    @checked[stone] = true

    pairs = @group_by_first[stone.first]
    until pairs.empty?
      check_stones(pairs.pop, index)
    end
    
    pairs = @group_by_second[stone.last]
    until pairs.empty?
      check_stones(pairs.pop, index)
    end
    
  end
end