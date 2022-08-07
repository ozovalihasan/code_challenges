# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, needed_plots)
  needed_plots *= 2
  until flowerbed.empty? do
    if flowerbed.pop.zero?
      needed_plots -= 1
    else
      needed_plots += (needed_plots % 2) + 1
    end
  end

  0 >= needed_plots - 1
end