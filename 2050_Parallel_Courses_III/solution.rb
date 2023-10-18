# @param {Integer} n
# @param {Integer[][]} relations
# @param {Integer[]} time
# @return {Integer}
def minimum_time(n, relations, time)
  must_courses_count = Array.new(n + 1) { 0 }
  next_courses = Array.new(n + 1) { [] }
  relations.each do |relation|
    must_courses_count[relation.last] += 1
    next_courses[relation.first] << relation.last
  end

  @results = Array.new(n + 1) { 0 }
  @completed_mandatory = must_courses_count
  @next_courses = next_courses
  @time = time

  start_courses = (1..n).to_a - relations.map(&:last)
  start_courses.each do |course|
    check_course(course, 0)
  end

  @results.max
end

def check_course(course, total_time)
  total_time += @time[course - 1]
  @results[course] = total_time if total_time > @results[course]

  @completed_mandatory[course] -= 1
  return if @completed_mandatory[course].positive?

  @next_courses[course].each do |next_course|
    check_course(next_course, @results[course])
  end
end
