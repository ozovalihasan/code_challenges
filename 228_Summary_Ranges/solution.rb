# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return [] if nums.empty?
  last = nums.first
  result = []

  nums.each_cons(2) do |first, second| 
    unless first.next.eql? second 
      result << last.to_s
      result.last << "->#{first}" unless first.eql? last
      last = second
    end
  end

  result << last.to_s
  result.last << "->#{ nums.last }" unless nums.last.eql? last

  result
end




######################
## More clear, but slower solution
######################
# @param {Integer[]} nums
# @return {String[]}
# def summary_ranges(nums)
#   nums.chunk_while {|first, second| (first + 1) == second}
#       .map do |arr| 
#         arr.first.to_s + (arr.size > 1 ? "->#{ arr.last }" : "" )
#       end
# end

