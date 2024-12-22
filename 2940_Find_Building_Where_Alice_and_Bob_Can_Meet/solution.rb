def leftmost_building_queries(heights, queries)
  sorted = []
  last_height_index = heights.size - 1
  result = {}

  grouped_queries = queries.map(&:sort!).group_by(&:last).transform_values! { |values| values.map(&:first) }
  sorted_grouped_queries = grouped_queries.sort_by(&:first).reverse

  sorted_grouped_queries.each do |max, mins|
    last_height_index.downto(max) do |index|
      height = heights[index]
      sorted.shift while !sorted.empty? && sorted.first.first <= height
      sorted.unshift [height, index]
    end
    last_height_index = max

    mins.each do |min|
      result[max] ||= {}
      result[max][min] = if min == max || heights[max] > heights[min]
                           max
                         elsif heights[max] <= heights[min]
                           if sorted.last.first <= heights[min]
                             -1
                           else
                             sorted.bsearch { |(sorted_height, _)| sorted_height > heights[min] }.last
                           end
                         
                         end
    end
  end

  queries.map { |min, max| result[max][min] }
end
