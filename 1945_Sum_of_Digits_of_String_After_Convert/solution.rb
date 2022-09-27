# @param {String} s
# @param {Integer} k
# @return {Integer}
def get_lucky(str, k)
  s = transform_chars_to_nums(s)
  
  k.times do
    s = sum_digits(s)
  end
  s
end

def transform_chars_to_nums(str)
  hash = {}
  str.chars.map {|char| hash[char] ||= char.ord - 96}.join.to_i
end

def sum_digits(num)
  num.digits.sum
end