# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
  scores = []

  operations.each do |operation|

    case operation
    when "+"
      scores << scores.last(2).sum
    when "D"
      scores << (scores.last * 2)
    when "C"
      scores.pop
    else
      scores << operation.to_i
    end
    
  end

  scores.sum
end