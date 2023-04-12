# @param {String} path
# @return {String}
def simplify_path(path)
  stack = []
  
  parts = path.split("/") - ["", "."]
  
  parts.each do |part|
    part == ".." ? stack.pop : (stack << part)
  end

  "/" << stack.join("/")
end