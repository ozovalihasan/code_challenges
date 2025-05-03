# @param {Integer[]} tops
# @param {Integer[]} bottoms
# @return {Integer}
def min_domino_rotations(tops, bottoms)
  [
    count_row(tops, bottoms, tops[0]), 
    count_row(tops, bottoms, bottoms[0]), 
    count_row(bottoms, tops, tops[0]),
    count_row(bottoms, tops, bottoms[0])
  ].compact.min || -1
end

def count_row(row, opposite_row, ref_num)
  count = 0
  row.zip(opposite_row) do |num1, num2|
    next if num1 == ref_num

    if num2 == ref_num 
      count += 1
    else
      return nil
    end
  end

  count
end