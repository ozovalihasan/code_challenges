# @param {String[]} req_skills
# @param {String[][]} people
# @return {Integer[]}
def smallest_sufficient_team(req_skills, people)
  @req_skills = req_skills.map.with_index {|skill, index| [skill, 2 ** index]}.to_h
  @sum_req_skills = @req_skills.values.sum
  @people_skills_sum = people.map! {|skills| skills.sum {|skill| @req_skills[skill]}}
  @max_people_skills_sum = @people_skills_sum.size - 1
  @result_step = Float::INFINITY
  @result = []
  check_person
  @result
end

def check_person(index = 0, previous_people_skills_sum = 0, step = 0, prev_people = [])
  return if step >= @result_step
  
  index.upto(@max_people_skills_sum) do |person_index|
    current_people_skills_sum = @people_skills_sum[person_index] | previous_people_skills_sum
    
    next if current_people_skills_sum == previous_people_skills_sum
    
    prev_people << person_index
    if current_people_skills_sum == @sum_req_skills
      @result_step = step
      @result = prev_people.clone
      prev_people.pop
      return
    end
    
    check_person(person_index + 1, current_people_skills_sum, step + 1, prev_people)
    prev_people.pop
  end

  false
end