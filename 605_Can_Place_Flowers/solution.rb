# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  needed_plots = n * 2
  while flowerbed.first do
    if flowerbed.pop.zero?
      needed_plots -= 1
    else
      needed_plots += (needed_plots % 2) + 1
    end
  end

  0 >= needed_plots - 1
end