MEDALS = ["Gold Medal","Silver Medal","Bronze Medal"]

# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
  result = {}
  score.sort.reverse.each_with_index do |checked_score, index|
    result[checked_score] = MEDALS[index] || (index + 1).to_s
  end

  score.map {|checked_score| result[checked_score] }
end