# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def min_eating_speed(piles, h)
  piles.map!(&:to_f)
  
  (1..piles.max.to_i).bsearch do |current_k|
    piles.sum {|pile| (pile / current_k).ceil} <= h
  end
end