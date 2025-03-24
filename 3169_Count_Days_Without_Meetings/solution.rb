# @param {Integer} days
# @param {Integer[][]} meetings
# @return {Integer}
def count_days(days, meetings)
  meetings = meetings.sort_by(&:first)

  last_day = meetings.first.first
  count = last_day - 1
  meetings.each do |start_day, end_date|
    count += start_day - last_day - 1 if start_day > last_day
    last_day = end_date if end_date > last_day
  end 

  count += days - last_day if days >= last_day
  
  count
end