# @param {Integer} start
# @param {Integer} finish
# @param {Integer} limit
# @param {String} s
# @return {Integer}
def number_of_powerful_int(start, finish, limit, s)
  return 0 if s.to_i > finish 

  start_left = (start.to_s)[...-s.size]
  finish_left = (finish.to_s)[...-s.size]
  start_include = false
  finish_include = false

  start_include = true if start.to_s[-s.size..].to_i <= s.to_i
  finish_include = true if finish.to_s[-s.size..].to_i >= s.to_i

  start_left.each_char.with_index do |char, index|
    if char.to_i > limit
      start_left = (start_left[0..index].to_i(limit + 1) + 1).to_s(limit + 1) + "0" * (start_left.size - index )
      start_include = true

      break
    end
  end

  finish_left.each_char.with_index do |char, index|
    if char.to_i > limit
      finish_left = (finish_left[0..index].to_i(limit + 1) + 1).to_s(limit + 1) + "0" * (finish_left.size - index )
      finish_include = false

      break
    end
  end
  
  result = finish_left.to_i(limit + 1) - start_left.to_i(limit + 1) - 1
  result += 1 if start_include
  result += 1 if finish_include

  result
end