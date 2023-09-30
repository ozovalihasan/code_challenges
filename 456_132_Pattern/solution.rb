# @param {Integer[]} nums
# @return {Boolean}
def find132pattern(nums)
  parts = nums.chunk_while {|first, second| first <= second}.to_a
  result = []
  max = min = nums.first
  
  parts.each_with_index do |part, index|
    part.each do |num|
      if num <= min
        min = num
        next
      elsif num >= max
        max = num
        next
      end

      result_index = result.bsearch_index {|checked_part| checked_part.first > part.last} || result.size
    
      if result_index > 0
        checked_part = result[result_index - 1]
        return true if num.between? checked_part.first + 1, checked_part.last - 1
      end
      
    end

    if part.size > 1
      result_index = result.bsearch_index {|checked_part| checked_part.first >= part.last}

      if result_index
        result.insert(result_index, part)
      else
        result << part
      end
    end
  end

  false
end