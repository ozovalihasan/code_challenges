# @param {Integer[]} job_difficulty
# @param {Integer} total_days
# @return {Integer}
def min_difficulty(job_difficulty, total_days)
  result = Array.new(total_days + 1) { {} }

  result[0] = { 0 => 0 }

  result[0...total_days].each_with_index do |possible_totals, day_index|
    possible_totals.each do |index, total|
      max = job_difficulty[index]

      index.upto(job_difficulty.size - 1) do |index2|
        max = [max, job_difficulty[index2]].max

        if (result[day_index + 1][index2 + 1] || Float::INFINITY) > (total + max)
          result[day_index + 1][index2 + 1] = total + max 
        end
      end
    end
  end

  result.last[job_difficulty.size] || -1
end
