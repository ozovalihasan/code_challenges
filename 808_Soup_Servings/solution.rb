# @param {Integer} n
# @return {Float}
def soup_servings(n)
  return 1 if n > 4800 
  
  @memo = {}
  check_turn(n, n)
end

UNITS = [[100, 0], [75, 25], [50, 50], [25, 75]]
def check_turn(soup_a, soup_b)
  return @memo[[soup_a, soup_b]] if @memo[[soup_a, soup_b]]
  return @memo[[soup_a, soup_b]] = 0.5 if soup_a <= 0 && soup_b <= 0
  return @memo[[soup_a, soup_b]] = 1.0 if soup_a <= 0
  return @memo[[soup_a, soup_b]] = 0.0 if soup_b <= 0

  @memo[[soup_a, soup_b]] = UNITS.sum do |unit_a, unit_b|
                              check_turn(soup_a - unit_a, soup_b - unit_b)
                            end / 4
end