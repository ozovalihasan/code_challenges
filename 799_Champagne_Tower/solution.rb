# @param {Integer} poured
# @param {Integer} query_row
# @param {Integer} query_glass
# @return {Float}
def champagne_tower(poured, query_row, query_glass)
  previous_row = [poured]

  query_row.times do
    previous_row.unshift(0)

    previous_row.each_with_index do |cell, index|
      half_of_floating = (cell >= 1 ? (cell - 1) : 0 ) / 2.0
      
      previous_row[index - 1] += half_of_floating
      previous_row[index] = half_of_floating
    end 
  end

  [previous_row[query_glass], 1].min
end