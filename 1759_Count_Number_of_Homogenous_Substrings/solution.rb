MODULO = (10**9) + 7
# @param {String} str
# @return {Integer}
def count_homogenous(str)
  str.chars.chunk(&:itself).map { |arr| arr.last.count }.sum { |num| permutation(num) % MODULO } % MODULO
end

def permutation(num)
  (num * (num + 1)) / 2
end
