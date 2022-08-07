# #############
# 1. Solution
# #############
# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  flowerbed.unshift(0) << 0
  result = [""]
  
  flowerbed.each do |plot|
    if plot.zero?
      result.last << "0"
    else
      result << ""
    end
  end
  
  result.inject(0) do |sum, pair|
    sum + (pair.length-1) / 2
  end >= n
end

# #############
# 2. Solution
# #############
# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
# def can_place_flowers(flowerbed, n)
#   flowerbed.unshift(0) << 0
#   flowerbed
#     .chunk(&:zero?)
#     .filter_map {|result| (result.last.size - 1) / 2 if result.first }
#     .sum >= n
# end
