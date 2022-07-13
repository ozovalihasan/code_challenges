# @param {String} s
# @return {Boolean}

# Please visit https://regexr.com/ to learn the explanation of the used regex 

def is_number(str)
   str.match?(/^[+-]?(\d+\.?\d*|\d*\.?\d+)([eE][+-]?\d+)?$/)
end