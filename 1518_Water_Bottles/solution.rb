# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def num_water_bottles(num_bottles, num_exchange)
  total_bottles = num_bottles
  
  until num_bottles < num_exchange
    full_bottles, empty_bottles = num_bottles.divmod(num_exchange)
    total_bottles += full_bottles
    num_bottles = full_bottles + empty_bottles
  end

  total_bottles
end