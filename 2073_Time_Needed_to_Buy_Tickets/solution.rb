# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}
def time_required_to_buy(tickets, k)
  ref_ticket = tickets[k]
  
  tickets.map.with_index.sum do |ticket, index|
    time = [ref_ticket, ticket].min
    ref_ticket -= 1 if k == index
    time
  end
end