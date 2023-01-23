# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  return 1 if n == 1
  return -1 if trust.empty?
  
  trust = trust.transpose

  possible_judges = trust.last.tally.find {|_, total_people| total_people == n - 1} || []
  
  (possible_judges - trust.first).first || -1
end