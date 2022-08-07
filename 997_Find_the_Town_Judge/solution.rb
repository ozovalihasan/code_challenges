# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  return n if n == 1
  
  hash = Hash.new(0)
  trust.each do |(first,second)|
    hash[second] += 1
    hash[first] -= 1
  end

  possible_judge = hash.find{|_, val| val == n-1}
  return possible_judge.first if possible_judge
  -1
end