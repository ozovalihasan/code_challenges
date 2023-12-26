MOD = (10**9) + 7
# @param {Integer} units
# @param {Integer} sides
# @param {Integer} target
# @return {Integer}
def num_rolls_to_target(units, sides, target)
  @memo = {}
  @sides = sides
  check(units, target)

  @memo[[units, target]] % MOD
end

def check(units, target)
  return @memo[[units, target]] if @memo[[units, target]]
  return @memo[[units, target]] = 1 if units.zero? && target.zero?
  return @memo[[units, target]] = 0 if units <= 0 || target <= 0
  return @memo[[units, target]] = 0 if (units * @sides) < target
  
  @memo[[units, target]] = 1.upto(@sides).sum do |side|
    check(units - 1, target - side) 
  end % MOD
end
