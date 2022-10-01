# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
  letters = license_plate.downcase.scan(/[A-Za-z]/).tally

  words.select {|word| letters.all? {|letter, val| word.count(letter) >= val}}
       .uniq(&:length).min_by(&:length)
end