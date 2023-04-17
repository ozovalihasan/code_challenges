# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  max = candies.max

  candies.map do |candy|
    (candy + extra_candies) >= max
  end
end