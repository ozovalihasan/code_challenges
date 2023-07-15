# @param {Integer[][]} events
# @param {Integer} k
# @return {Integer}
def max_value(events, k)
  @results = Array.new(k + 1, 0)
  inactive_results = []
  events.sort_by!(&:first)
  
  events.each do |start_date, end_date, score|
    
    active_results_count = inactive_results.bsearch_index {|(active_date, _)| active_date >= start_date} || inactive_results.size
    set_results(inactive_results.shift(active_results_count))

    index = inactive_results.bsearch_index {|active_date, _| active_date > end_date}
    if index
      inactive_results.insert(index, [end_date, @results.map {|current_score| current_score + score}])
    else
      inactive_results << [end_date, @results.map {|current_score| current_score + score}]
    end
  end
  
  set_results(inactive_results)
  @results.last
end

def set_results(active_results)
  active_results.map(&:last).each do |active_result|
    active_result.pop
    active_result.each_with_index do |active_score, step|
      @results[step + 1] = active_score if active_score > @results[step + 1]
    end
  end
end