# @param {String} s
# @return {String}
def reverse_only_letters(s)
  s.scan(/[a-zA-Z]/)
  s.gsub(/[a-z]/i) { letters.pop }
end