# @param {Integer[][]} logs
# @return {Integer}
def maximum_population(logs)
  hash = {}
  logs.each do |birth, _|
    unless hash[birth] 
      hash[birth] = logs.count {|first, second| birth.between?(first, second - 1)}
    end
  end
  
  max = hash.values.max
  hash.filter_map {|key, value| key if value == max}.min
end