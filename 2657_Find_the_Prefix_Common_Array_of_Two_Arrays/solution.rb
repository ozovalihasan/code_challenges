# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def find_the_prefix_common_array(arr1, arr2)
  counts = Hash.new(0)
  result = 0
  
  arr1.zip(arr2).map do |num1, num2|
    counts[num1] += 1
    result += 1 if counts[num1] == 2
    
    counts[num2] += 1
    result += 1 if counts[num2] == 2
    
    result
  end
end
