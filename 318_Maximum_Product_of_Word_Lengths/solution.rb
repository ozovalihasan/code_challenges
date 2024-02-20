# @param {String[]} words
# @return {Integer}
def max_product(words)
  words = words.map { |word| [word.size, to_compact_integer(word)] }.sort_by(&:first).reverse
  max = 0
  
  words.each_with_index do |(count1, compact_integer1), index1|
    (index1 + 1).upto(words.size - 1) do |index2|
      count2, compact_integer2 = words[index2]
      break if (product = count1 * count2) <= max

      max = product if (compact_integer1 & compact_integer2) == 0
    end
  end

  max
end

CHAR_INDICES = ("a".."z").zip(0...26).to_h
def to_compact_integer(word)
  word.chars.uniq.sum {|char| 2 ** CHAR_INDICES[char] }
end