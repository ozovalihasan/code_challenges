# @param {Integer} n
# @param {Integer[][]} meetings
# @param {Integer} first_person
# @return {Integer[]}
def find_all_people(n, meetings, first_person)
  sorted_meetings_with_time = meetings.group_by(&:pop).sort_by(&:first)

  @knowing_people = Set[0, first_person]
  
  sorted_meetings_with_time.each do |time, checked_meetings|
    people_on_same_time = {}
    checked_meetings.each do |first, second|
      (people_on_same_time[first] ||= []) << second
      (people_on_same_time[second] ||= []) << first
    end

    checked_meetings.each do |first_person_num, second_person_num|
      update_knowing_people(second_person_num, people_on_same_time) if @knowing_people.include?(first_person_num)
      update_knowing_people(first_person_num, people_on_same_time) if @knowing_people.include?(second_person_num)
    end
  end

  @knowing_people.to_a
end

def update_knowing_people(person_num, people_on_same_time)
  return if @knowing_people.include?(person_num)

  @knowing_people << person_num
  people_on_same_time[person_num].each do |next_person_num|
    update_knowing_people(next_person_num, people_on_same_time)
  end
end