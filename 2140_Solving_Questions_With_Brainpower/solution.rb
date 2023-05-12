# @param {Integer[][]} questions
# @return {Integer}
def most_points(questions)
  result = [0]

  questions.each_with_index do |(point, brainpower), index|
    next_index = brainpower + index + 1
    if result[index] + point > ( result[next_index] || 0 )
      result[next_index] = result[index] + point 
    end

    if result[index] >= (result[index + 1] || 0)
      result[index + 1] = result[index] 
    end
  end

  result.compact.max
end