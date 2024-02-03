# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
  paragraph = paragraph.downcase

  paragraph.gsub!(/[^a-z]/, ' ')
  words = paragraph.split(' ')
  words.tally.reject { |word, frequency| banned.include? word }.max_by(&:last).first
end
