# @param {String[]} pizza
# @param {Integer} k
# @return {Integer}

# I couldn't solve

def ways(pizza, k)
  apple_counts = Array.new(pizza.size + 1) { Array.new(pizza.size + 1, 0) }
  
  (pizza.size - 1).downto(0) do |row_index|
    (pizza.size - 1).downto(0) do |col_index|
      if pizza[row_index][col_index] == "A"
        apple_counts[row_index][col_index] = apple_counts[row_index][col_index + 1] + 1
      else
        apple_counts[row_index][col_index] = apple_counts[row_index][col_index + 1] 
      end
    end
  end

  (pizza.size - 1).downto(0) do |row_index|
    (pizza.size - 1).downto(0) do |col_index|
      apple_counts[row_index][col_index] += apple_counts[row_index  + 1][col_index]
    end
  end

  apple_counts.each { p _1}
  result = 0

  (1).upto(pizza.size) do |row_index|
    (1).upto(pizza.size) do |col_index|


      
    end
  end
end

