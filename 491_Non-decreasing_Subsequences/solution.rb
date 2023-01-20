# @param {Integer[]} nums
# @return {Integer[][]}
def find_subsequences(nums)
  result = nums.each_with_object( Set.new ) do |num, subresult|
    subresult.merge( subresult.filter_map { |arr| arr.clone << num if arr.last <= num } )
    subresult << [ num ]
  end
  
  result.select! {|arr| arr.size > 1}.to_a
end