# @param {Integer[]} satisfaction
# @return {Integer}
def max_satisfaction(satisfaction)
  negatives, positives = satisfaction.sort!.partition(&:negative?)
  total_satisfaction = positives.sum
  result = positives.each_with_index.sum {|level, index| level * (index + 1)}
  
  negatives.reverse_each do |level|
    total_satisfaction += level

    break if total_satisfaction <= 0  

    result += total_satisfaction 
  end

  result
end