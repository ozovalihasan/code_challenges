# @param {String} senate
# @return {String}
def predict_party_victory(senate)
  remove_senate = 0
  rights = {"D" => 1, "R" => -1 }
  senate = senate.split("").map! {|party| rights[party]}
  
  loop do
    senate.each_with_index do |party, index|
      senate[index] = 0 if (remove_senate * party) < 0

      remove_senate += party
    end

    senate.delete(0)
    return "Dire" if senate.none? -1
    return "Radiant" if senate.none? 1
  end
end