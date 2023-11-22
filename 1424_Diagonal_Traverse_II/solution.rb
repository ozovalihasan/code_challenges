# @param {Integer[][]} nums
# @return {Integer[]}
def find_diagonal_order(nums)
  result = []
  
  nums.each_with_index do |arr, row_index|
    arr.each_with_index do |num, col_index|
      (result[row_index + col_index] ||= []) << num
    end
  end

  result.map(&:reverse).flatten
end
