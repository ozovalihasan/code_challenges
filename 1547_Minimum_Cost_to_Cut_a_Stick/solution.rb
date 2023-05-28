# @param {Integer} n
# @param {Integer[]} cuts
# @return {Integer}
def min_cost(n, cuts)
  cuts.sort!
  @cache = {0 => {}}
  cuts.each {|cut| @cache[cut] = {}}
  
  check_cut(0, n, cuts)
end

def check_cut(start_index, end_index, cuts)
  return @cache[start_index][end_index] if @cache[start_index][end_index]

  selected_cuts = cuts.select {|cut_index| cut_index.between?(start_index + 1, end_index - 1)}
  
  return @cache[start_index][end_index] = 0 if selected_cuts.empty?
  
  cost = end_index - start_index
  min_of_next_costs = selected_cuts
                        .map do |selected_cut|
                          check_cut(start_index, selected_cut, selected_cuts) + 
                          check_cut(selected_cut, end_index, selected_cuts)
                        end
                        .min 
                                   
  @cache[start_index][end_index] = min_of_next_costs + cost 
end