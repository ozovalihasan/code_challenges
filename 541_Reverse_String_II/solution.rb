# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
  (0..(s.size - 1)).step(2 * k) do |index|
    s[index ... index + k] = s[index ... index + k].reverse!
  end

  s
end