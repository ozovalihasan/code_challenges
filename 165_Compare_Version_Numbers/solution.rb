# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
  version1 = update_parts_as_integer(version1)
  version2 = update_parts_as_integer(version2)

  if version1.size > version2.size
    version2.concat Array.new((version1.size - version2.size), 0)
  elsif version2.size > version1.size
    version1.concat Array.new((version2.size - version1.size), 0)
  end

  version1 <=> version2
end

def update_parts_as_integer(version)
  version.split(".").map(&:to_i)
end