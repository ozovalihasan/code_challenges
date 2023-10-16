# @param {String} str
# @return {Boolean}
def are_numbers_ascending(str)
  prev = -1
  str.scan(/\d+/) do
    num = Regexp.last_match[0].to_i
    return false if prev >= num

    prev = num
  end

  true
end
