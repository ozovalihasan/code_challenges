# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  [a, b].inject(0) { |sum, num| num.to_i(2) + sum }.to_s(2)
end