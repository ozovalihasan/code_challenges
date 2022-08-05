# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  return n if n == 1

  possible_judge = trust.group_by(&:last).find {|_, pair| pair.size == (n - 1)}&.first
  if possible_judge && trust.none? {|arr| arr.first == possible_judge}
    return possible_judge
  end
  
  -1
end