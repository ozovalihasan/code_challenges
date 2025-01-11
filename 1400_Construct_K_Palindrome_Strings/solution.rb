# @param {String} str
# @param {Integer} palindrome_count
# @return {Boolean}
def can_construct(str, palindrome_count) 
  palindrome_count.between?(
    str.chars.tally.values.count(&:odd?), 
    str.length
  )
end
