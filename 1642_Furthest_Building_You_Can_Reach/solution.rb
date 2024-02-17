# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
def furthest_building(heights, bricks, ladders)
  used_ladders = []
  used_bricks = 0
  
  heights.each_cons(2).with_index do |(previous_height, current_height), index|
    
    if current_height > previous_height
      diff_height = current_height - previous_height
      ladder_index = used_ladders.bsearch_index {|checked_height| checked_height < diff_height } || used_ladders.size
      used_ladders.insert(ladder_index, diff_height)

      if used_ladders.size > ladders
        used_bricks += used_ladders.pop

        return index if used_bricks > bricks
      end
    end
    
  end

  heights.size - 1
end