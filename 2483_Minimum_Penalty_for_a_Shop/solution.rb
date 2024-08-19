# @param {String} customers
# @return {Integer}
def best_closing_time(customers)
  penalty = 0
  penalties = customers.each_char
                       .map {|customer| penalty += customer == "Y" ? 1 : -1 }
                       .unshift(0)

  penalties.index(penalties.max)
end