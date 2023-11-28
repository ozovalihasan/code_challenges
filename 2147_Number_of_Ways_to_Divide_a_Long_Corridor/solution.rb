MODULO = (10**9) + 7

# @param {String} corridor
# @return {Integer}
def number_of_ways(corridor)
  count = corridor.count('S')
  return 0 if count.odd? || count < 2
  
  corridor[/S.*S/].scan(/SP*S(P*)/).inject(1) { |result, plants| (result * plants[0].size.next) % MODULO }
end
