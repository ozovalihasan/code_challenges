# @param {Integer[]} nums
# @return {Integer[][]}
def find_matrix(nums)
  count = Hash.new(0)
  result = []
  nums.each do |num|
    (result[count[num]] ||= []) << num
    count[num] = count[num] + 1
  end
  
  result
end
