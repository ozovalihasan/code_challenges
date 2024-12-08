# @param {Integer[][]} events
# @return {Integer}
def max_two_events(events)
  events.sort_by!(&:first)

  max_value = 0
  previous_max_value = 0
  end_time_values = []

  events.each do |start_time, end_time, value|
    end_time_index = end_time_values.bsearch_index { |pair| pair.first >= end_time } || end_time_values.size
    end_time_values.insert(end_time_index, [end_time, value])

    while end_time_values.first.first < start_time
      previous_max_value = [end_time_values.shift.last, previous_max_value].max
    end
    
    max_value = [max_value, previous_max_value + value].max
  end

  max_value
end
