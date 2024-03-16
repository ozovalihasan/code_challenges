# @param {Integer[][]} first_list
# @param {Integer[][]} second_list
# @return {Integer[][]}
def interval_intersection(first_list, second_list)
  return [] if second_list.empty?

  result = []
  first_list.reverse_each do |first_el|
    while second_list.last.first > first_el.last
      second_list.pop

      return result.reverse if second_list.empty?
    end

    second_list.reverse_each do |second_el|
      break if second_el.last < first_el.first

      concatenated_sub_result = (second_el + first_el).sort
      result << concatenated_sub_result[1..2]
    end
  end

  result.reverse
end