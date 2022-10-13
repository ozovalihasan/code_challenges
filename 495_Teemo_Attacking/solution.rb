# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)

  0.upto( time_series.size - 2 ).sum do |i|
    [time_series[i + 1] - time_series[i], duration].min
  end + duration

end


####################
## 2. Solution
####################
# # @param {Integer[]} time_series
# # @param {Integer} duration
# # @return {Integer}
# def find_poisoned_duration(time_series, duration)
#   time_series << Float::INFINITY

#   time_series.each_cons(2).sum do |first, second|
#     [second - first, duration].min
#   end
# end