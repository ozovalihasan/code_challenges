# @param {String} blocks
# @param {Integer} k
# @return {Integer}
def minimum_recolors(blocks, k)
  min_count = white_count = blocks[...k].count('W')
  k.upto(blocks.size - 1) do |index|
    white_count += 1 if blocks[index] == 'W'
    white_count -= 1 if blocks[index - k] == 'W'
    min_count = white_count if white_count < min_count
    
    break if min_count.zero?
  end

  min_count
end
