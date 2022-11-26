# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer[]} profit
# @return {Integer}
def job_scheduling(start_time, end_time, profit)
  jobs = start_time.zip(end_time, profit).sort_by(&:first).reverse
  previous_total_profits = [[0, 0]]

  while (time_now, end_time, profit = jobs.pop)
    max_profit_until_now = previous_total_profits.select { |end_time, _| end_time <= time_now }.max_by(&:last).last
    previous_total_profits.select! {|end_time, _| end_time > time_now}
    previous_total_profits << [ time_now, max_profit_until_now ] << [ end_time, max_profit_until_now + profit ]
  end

  previous_total_profits.max_by(&:last).last
end