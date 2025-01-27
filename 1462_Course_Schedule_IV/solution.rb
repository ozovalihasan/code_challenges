# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @param {Integer[][]} queries
# @return {Boolean[]}
def check_if_prerequisite(num_courses, prerequisites, queries)
  starting_points = num_courses.times.to_a - prerequisites.map(&:last)
  @previous_courses = Array.new(num_courses) { 0 }
  @following_courses = Array.new(num_courses) { [] }

  prerequisites.each do |prereq, course|
    @previous_courses[course] += 1
    @following_courses[prereq] << course
  end
  @courses = Array.new(num_courses) { |index| Set.new << index }

  starting_points.each do |course|
    add_prerequisites(course)
  end

  queries.map do |prereq, course|
    @courses[course].include?(prereq)
  end
end

def add_prerequisites(prereq)
  return unless @previous_courses[prereq].zero?

  @following_courses[prereq].each do |following_course|
    @courses[following_course] += @courses[prereq]
    @previous_courses[following_course] -= 1
    add_prerequisites(following_course)
  end
end
