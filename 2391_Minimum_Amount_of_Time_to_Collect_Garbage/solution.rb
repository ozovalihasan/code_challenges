# @param {String[]} garbage
# @param {Integer[]} travel
# @return {Integer}
def garbage_collection(garbage, travel)
  total_time_to_collect = garbage.join.size

  necessary_time_to_travel = %w[P G M].sum do |char|
    index = garbage.rindex { |garb| garb.include?(char) } || 0
    travel.first(index).sum
  end

  necessary_time_to_travel + total_time_to_collect
end
