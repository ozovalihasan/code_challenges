# @param {String} text
# @return {String}
def reorder_spaces(text)
  spaces_count = text.count(" ")
  text = text.split(/\s+/)
  text.delete("")
  
  return text.join + " " * spaces_count if text.size == 1

  quotient, remainder = spaces_count.divmod(text.size - 1)
  text.join(" " * quotient) + " " * remainder
end