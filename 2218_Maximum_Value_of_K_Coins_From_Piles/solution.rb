# @param {Integer[][]} piles
# @param {Integer} k
# @return {Integer}
def max_value_of_coins(piles, k)
  result = Array.new(k + 1) {[0]}

  piles.each do |pile|
    sum = 0

    pile.unshift(0)
    pile.map! { |cell| sum += cell }
  end

  piles.each do |pile|
    pile.each_with_index do |cell, index|
      0.upto(k - index) do |result_index|
        result[result_index + index] << (cell + result[result_index].first)
      end      
    end

    result.map! {|row| [row.max]}
  end

  result[k].max
end