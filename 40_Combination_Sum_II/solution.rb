# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum2(candidates, target)
  check(candidates.reject { |candidate| candidate > target }.sort, target)
end

def check(candidates, target, result = [])
  candidates.each_with_index do |candidate, index|
    next if index.positive? && candidates[index - 1] == candidate

    target_new = target - candidate
    if target_new.zero?
      result << [candidate]
    elsif target_new.positive?
      result += check(candidates[(index + 1)...], target_new).each { |sub_result| sub_result << candidate }
    else
      break
    end
  end

  result
end
