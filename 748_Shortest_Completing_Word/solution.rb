# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
  letters = license_plate.downcase.scan(/[A-Za-z]/).tally

  words.select {|word| letters.keys.all? {|letter| word.count(letter) >= letters[letter]}}
       .min_by(&:length)
end