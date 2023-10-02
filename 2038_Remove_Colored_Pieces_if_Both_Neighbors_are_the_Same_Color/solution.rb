# @param {String} colors
# @return {Boolean}
def winner_of_game(colors)
  colors.scan(/A(A*)A/).flatten.sum(&:size) > colors.scan(/B(B*)B/).flatten(1).sum(&:size)
end