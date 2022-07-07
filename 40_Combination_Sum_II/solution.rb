# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum2(candidates, target)
  check(candidates.reject { |candidate| candidate > target }.sort, target)
end

def check(candidates, target, result = [])
  candidates.each_with_index do |candidate, index2|
    next if (index2 > 0) && candidates[index2 - 1] == candidate

    target_new = target - candidate
    if target_new.zero?
      result << [candidate]
    elsif target_new.positive?
      result += check(candidates[(index2 + 1)...], target_new).each { |sub_result| sub_result << candidate }
    end
  end

  result
end
