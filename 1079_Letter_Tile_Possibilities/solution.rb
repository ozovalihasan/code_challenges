# @param {String} tiles
# @return {Integer}
def num_tile_possibilities(tiles)
  1.upto(tiles.size).sum do |size|
    tiles.chars.permutation(size).map(&:join).uniq.size
  end
end
