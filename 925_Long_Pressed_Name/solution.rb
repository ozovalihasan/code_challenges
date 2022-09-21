# @param {String} name
# @param {String} typed
# @return {Boolean}
def is_long_pressed_name(name, typed)
  name = slice_consecutive_chars(name)
  typed = slice_consecutive_chars(typed)

  return false if name.size != typed.size

  name.zip(typed).all? {|arr_name, arr_typed| arr_name[0] == arr_typed[0] && arr_name.size <= arr_typed.size }
end

def slice_consecutive_chars(str)
  str.each_char.chunk(&:itself).map(&:last)
end