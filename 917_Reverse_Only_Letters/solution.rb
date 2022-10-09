# @param {String} s
# @return {String}
def reverse_only_letters(s)
  letters = s.scan(/[a-zA-Z]/)
  s.gsub(/[a-z]/i) { letters.pop }
end