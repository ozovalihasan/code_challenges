# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer[]} profit
# @return {Integer}
def job_scheduling(start_time, end_time, profit)
  return profit.max if start_time.max < end_time.min

  jobs = start_time.zip(end_time, profit).sort_by(&:first)
  total_profits = [[0, 0]]

  jobs.each do |current_time, current_end_time, current_profit|
    max_profit_until_now = total_profits.select { |checked_end_time, _| checked_end_time <= current_time }.max_by(&:last).last
    total_profits.select! { |checked_end_time, _| checked_end_time > current_time }
    total_profits << [current_time, max_profit_until_now] << [current_end_time, max_profit_until_now + current_profit]
  end

  total_profits.max_by(&:last).last
end
