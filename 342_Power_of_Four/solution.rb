# @param {Integer} num
# @return {Boolean}
def is_power_of_four(num)
  return false unless num.positive?

  power = 0
  until 4**power > num
    return true if 4**power == num
    
    power += 1
  end

  false
end
