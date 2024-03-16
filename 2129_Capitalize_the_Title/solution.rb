# @param {String} title
# @return {String}
def capitalize_title(title)
  title.split(" ")
       .map {|word| word.size > 2 ? word.capitalize : word.downcase }
       .join(" ")
end