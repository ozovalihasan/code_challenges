# @param {String[]} details
# @return {Integer}
def count_seniors(details)
  details.count { |detail| detail[-4...-2].to_i > 60 }
end
