# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  n *= 2
  while flowerbed.first do
    if flowerbed.pop.zero?
      n -= 1
    else
      n += (n % 2) + 1
    end
  end

  0 >= n - 1
end