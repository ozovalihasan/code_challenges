# @param {String[]} arr
# @return {Integer}
def max_length(arr)
  max = 0

  1.upto(arr.size) do |size|
    stop = true

    arr.combination(size).each do |comb|
      comb_total_length = comb.sum(&:length)

      next if comb_total_length <= max

      if all_uniq?(comb.join.chars) 
        stop = false
        max = comb_total_length
  
        return 26 if max == 26
  
      end
  
    end
  
    break if stop
  end

  max
end

def all_uniq?(str)
  str.all? {|char| str.count(char).eql? 1}
end

