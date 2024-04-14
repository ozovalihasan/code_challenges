# @param {Character[][]} matrix
# @return {Integer}
def maximal_rectangle(matrix)
  matrix.map! do |row|
    sum = 0
    row.reverse.map do |cell|
      if cell == "0"
        sum = 0
      else
        sum += 1
      end
      sum
    end.reverse
  end
  max_row_index = matrix.size - 1
  max = 0 
  matrix.transpose.each do |row|
    previous = row.first
    row.size.times do |index1|
      if previous > row[index1]
        previous = row[index1]
        next
      end
      previous_max = Float::INFINITY

      index1.upto(row.size - 1) do |index2|
        cell = row[index2]
        previous_max = cell if cell < previous_max
        max = [max, previous_max * (index2 -index1 + 1)].max
        
        break if previous_max == 0
      end
      previous = row[index1]
    end
  end
  
  max
end