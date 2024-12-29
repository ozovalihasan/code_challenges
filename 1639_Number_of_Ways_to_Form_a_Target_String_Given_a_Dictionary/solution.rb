# @param {String[]} words
# @param {String} target
# @return {Integer}

MODULO = (10**9) + 7
def num_ways(words, target)
  counts = words.map(&:chars).transpose.map(&:tally)
  
  previous = Array.new(counts.size + 1, 1)
  target.chars.each do |char|
    current = Array.new(counts.size + 1, 0)
    
    counts.each_with_index do |sub_counts, index|
      total = (previous[index] * (sub_counts[char] || 0)) + current[index]
      current[index + 1] = total % MODULO
    end

    previous = current
  end

  previous.last
end
