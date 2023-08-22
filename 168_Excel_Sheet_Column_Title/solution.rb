# @param {Integer} column_number
# @return {String}
CHARS = ("A".."Z").to_a
def convert_to_title(column_number)
  result = ""

  quotient = column_number
  until quotient.zero?
    quotient, remainder = (quotient - 1).divmod(26)
    
    result << CHARS[remainder]
  end

  result.reverse
end