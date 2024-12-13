# @param {Integer[]} nums
# @return {Integer}
def find_score(nums)
  checked = Array.new(nums.size, false)
  checked << true
  
  checked_count = 0
  total_score = 0

  nums.zip(0...nums.size).sort_by(&:first).each do |num, index|
    next if checked[index]

    checked[index] = true
    checked_count += 1
    total_score += num

    unless checked[index - 1]
      checked[index - 1] = true
      checked_count += 1
    end
    
    unless checked[index + 1]
      checked[index + 1] = true
      checked_count += 1
    end

    return total_score if checked_count >= nums.size
  end
  
end
