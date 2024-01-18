# @param {String} text
# @return {String}
def arrange_words(text)
  text.downcase.split
    .sort_by(&:size).join(' ')
    .capitalize
end
