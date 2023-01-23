# @param {Integer} length
# @param {Integer} width
# @param {Integer} height
# @param {Integer} mass
# @return {String}
def categorize_box(length, width, height, mass)
  bulky = bulky?(length, width, height)
  heavy = heavy?(mass)

  if heavy && bulky
    "Both"
  elsif heavy
    "Heavy"
  elsif bulky
    "Bulky"
  else
    "Neither"
  end
end

def bulky?(length, width, height)
  return true if [length, width, height].any? {|dimension| dimension >= 10**4}
  length * width * height >= 10**9
end

def heavy?(mass) = mass >= 100