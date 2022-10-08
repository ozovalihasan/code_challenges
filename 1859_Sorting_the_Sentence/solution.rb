# @param {String} s
# @return {String}
def sort_sentence(s)
  s.scan(/(\w+)(\d+)/).sort_by(&:last).map(&:first).join(" ")
end