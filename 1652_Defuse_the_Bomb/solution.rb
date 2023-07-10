# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
  if k < 0
    code.rotate!(k - 1)
    k = -k
  end

  sum = code.first(k).sum
  size = code.size
  
  code.each_index.map { |index| sum += code[(index + k) % size] - code[index] }
end