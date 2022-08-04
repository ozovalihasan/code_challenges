# @param {String} a
# @param {String} b
# @return {Integer}
def repeated_string_match(a, b)
  reference = b[0...a.length]
  return -1 unless (a * 2).include? reference
  
  index = 0
  while index < b.length
    return -1 unless reference.match(/^#{b.slice(index, a.length)}/)
    index += a.length
  end

  repeat = b.length / a.length
  if (a * repeat).include? b
    repeat
  elsif (a * (repeat + 1)).include? b
    repeat + 1
  else
    repeat + 2
  end
end
