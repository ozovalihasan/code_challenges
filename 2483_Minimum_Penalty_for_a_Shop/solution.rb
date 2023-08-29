# @param {String} customers
# @return {Integer}
def best_closing_time(customers)
  result = 0
  customers = customers.each_char.map do |customer|
                result += customer == "Y" ? 1 : -1
              end.unshift(0)

  customers.index(customers.max)
end