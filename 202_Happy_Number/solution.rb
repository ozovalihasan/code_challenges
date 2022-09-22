# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  touched = {}
  loop do
    return true if n == 1 
    return false if touched[n]
    touched[n] = true
    n = n.digits.sum {|digit| digit ** 2}
  end
end

################
# Solution 2 (Not recommended)
################
# # @param {Integer} n
# # @return {Boolean}
# def is_happy(n)
#   known = {1=>true, 7=>true, 10=>true}
 
#   loop do
#     return true if known[n]
#     return false if n < 10
    
#     n = n.digits.sum {|digit| digit ** 2}
#   end
# end
