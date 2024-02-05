# @param {String} s
# @return {Boolean}
def check_string(str)
  (str.rindex("a") || -1)  < (str.index("b") || str.size)
end