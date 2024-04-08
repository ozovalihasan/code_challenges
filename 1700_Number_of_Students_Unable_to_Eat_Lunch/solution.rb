# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
  students = students.tally
  students.default = 0
  while (sandwich = sandwiches.shift)
    students[sandwich] -= 1

    return sandwiches.size + 1 if students[sandwich].negative?
  end

  0
end