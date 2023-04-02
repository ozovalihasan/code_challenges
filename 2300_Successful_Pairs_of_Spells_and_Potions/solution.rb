# @param {Integer[]} spells
# @param {Integer[]} potions
# @param {Integer} success
# @return {Integer[]}
def successful_pairs(spells, potions, success)
  potions.sort!.reverse!
  potions << 0
  success = success.to_f

  cache = {}
  spells.map! do |spell |
    cache[spell] ||= ( potions.bsearch_index {|potion| potion < (success / spell) } )
  end
end