# @param {Integer[][]} stones
# @return {Integer}
def remove_stones(stones)

  @hash = {}

  @group_by_first = stones.group_by(&:first)
  @group_by_second = stones.group_by(&:last)

  @result = 0
  
  stones.each_with_index do |stone, index|
    @result += 1 unless @hash[stone]
    check_stones(stone, index)
  end

  stones.size - @result
    
end

def check_stones(stone, index)
  
  unless @hash[stone]
    
    @hash[stone] = true

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