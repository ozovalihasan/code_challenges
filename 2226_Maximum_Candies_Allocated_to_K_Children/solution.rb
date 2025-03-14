# @param {Integer[]} candies
# @param {Integer} k
# @return {Integer}
def maximum_candies(candies, num_children)
  candies_sum = candies.sum
  
  result = (1..((candies_sum / num_children) + 1)).bsearch do |candies_per_child|
    num_children > (candies.sum { |candy| candy / candies_per_child })
  end || 1

  result - 1
end
