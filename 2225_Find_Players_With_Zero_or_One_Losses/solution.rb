# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners(matches)
  loser_list = matches.map(&:last).tally
  winners_array = matches.map(&:first)
  
  winners_without_lost = ( winners_array - loser_list.keys ).uniq.sort
  lost_only_one_match = loser_list.filter_map {|loser, total_lost| loser if total_lost.eql? 1}.sort
  [ winners_without_lost, lost_only_one_match ]
end