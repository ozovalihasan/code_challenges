# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  base = 2
  (a.to_i(base) + b.to_i(base)).to_s(base)
end