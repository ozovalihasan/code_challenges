# @param {Integer} total_teams_number
# @param {Integer[][]} edges
# @return {Integer}
def find_champion(total_teams_number, edges)
  result = (0...total_teams_number).to_a - edges.map(&:last)
  
  result.size == 1 ? result.first : -1
end
