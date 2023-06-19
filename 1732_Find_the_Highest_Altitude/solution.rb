# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  net_height = 0
  max = net_height

  gain.each do |height|
    net_height += height
    max = net_height if net_height > max
  end

  max
end