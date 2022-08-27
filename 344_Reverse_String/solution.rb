# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  (s.length/2).times do |index|
    s[index], s[~index] = s[~index], s[index]
  end
end

###############
## 2. Solution
###############
# # @param {Character[]} s
# # @return {Void} Do not return anything, modify s in-place instead.
# def reverse_string(s)
#   s.reverse!
# end