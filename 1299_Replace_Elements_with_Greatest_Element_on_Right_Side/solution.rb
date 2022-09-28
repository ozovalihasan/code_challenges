# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)

  arr << -1
  arr.reverse!
  
  arr[1..].each_with_index do |num, index|
    arr[index + 1] = num > arr[index] ? num : arr[index]
  end
  arr.tap(&:pop).reverse

end


#####################
# 2. Solution
#####################
# # @param {Integer[]} arr
# # @return {Integer[]}
# def replace_elements(arr)
# 
#   arr.reverse_each.with_object([-1]) { |num, res| res << (num > res.last ? num : res.last) }.tap(&:pop).reverse
# 
# end


#####################
# 3. Solution (longer version of the previous solution)
#####################
# # @param {Integer[]} arr
# # @return {Integer[]}
# def replace_elements(arr)
#   result = [-1]
# 
#   arr.reverse_each do |num|
# 
#     if num > result.last
#       result << num
#     else
#       result << result.last
#     end
# 
#   end
#
#   result.tap(&:pop).reverse
# end