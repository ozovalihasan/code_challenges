# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
  strs.map!(&:chars).transpose.count { |row| row != row.sort }
end