# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  return str1 if str1 == str2

  shortest = str1.match(/^(.*?)\1*$/)[1]

  return "" unless str2.match?(/^(#{shortest})+$/)
  
  shortest * (str2.size / shortest.size).gcd(str1.size / shortest.size)
end