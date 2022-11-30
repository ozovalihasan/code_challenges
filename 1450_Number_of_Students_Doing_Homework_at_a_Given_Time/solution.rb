# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
  start_time.each_with_index.count do |starting, index|
    query_time.between? starting, end_time[index]
  end
end