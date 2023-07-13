# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
  @must_courses = Array.new(num_courses) {[]}
  prerequisites.each do |course, must_course|
    @must_courses[course] << must_course
  end

  @checked = {}
  @must_courses.each_index do |course|
    next if @checked[course]
    
    @cycle_checked = {}
    return false if cycle?(course)
  end
  
  true
end

def cycle?(course)
  return @cycle_checked[course] if @checked[course]

  @checked[course] = true
  @cycle_checked[course] = true

  @must_courses[course].each do |must_course|
    return true if cycle?(must_course)
  end

  @cycle_checked[course] = false
end