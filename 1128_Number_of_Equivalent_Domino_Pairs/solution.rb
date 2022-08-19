# @param {Integer[][]} dominoes
# @return {Integer}
def num_equiv_domino_pairs(dominoes)
  dominoes.group_by(&:sort)
          .values.map(&:size).sum {|val| val * (val - 1) / 2}
end


##########
# 2. solution
##########

# # @param {Integer[][]} dominoes
# # @return {Integer}
# def num_equiv_domino_pairs(dominoes)
#   dominoes.map(&:sort).tally.values.sum {|val| val * (val - 1) / 2}
# end