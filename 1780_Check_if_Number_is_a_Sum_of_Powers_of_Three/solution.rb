# @param {Integer} num
# @return {Boolean}
def check_powers_of_three(num)
  not num.to_s(3).include?("2")
end
