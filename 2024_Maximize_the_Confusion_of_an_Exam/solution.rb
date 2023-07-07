# @param {String} answer_key
# @param {Integer} k
# @return {Integer}
def max_consecutive_answers(answer_key, k)
  [check_for(answer_key, k, "F"), check_for(answer_key, k, "T")].max
end

def check_for(answer_key, k, reference_char)
  return answer_key.length if answer_key.count(reference_char) <= k
  
  start_index = 0
  result = 0
  temp_result = 0
  answer_key.each_char do |char|
    k -= 1 if char == reference_char

    temp_result += 1

    while k < 0
      k += 1 if answer_key[start_index] == reference_char

      temp_result -= 1
      start_index += 1
    end

    result = temp_result if temp_result > result
  end

  result
end