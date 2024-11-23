# @param {Character[][]} box
# @return {Character[][]}
def rotate_the_box(box)
  box.each do |row|
    placed_index = row.size - 1

    (row.size - 1).downto(0) do |index|
      case row[index]
      when '#'
        row[placed_index], row[index] = row[index], row[placed_index]
        placed_index -= 1
      when '*'
        placed_index = index - 1
      end
    end
  end

  box.reverse.transpose
end
