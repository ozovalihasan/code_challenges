# @param {Integer} projects_until_deadline
# @param {Integer} total_capital
# @param {Integer[]} profits
# @param {Integer[]} capital
# @return {Integer}
def find_maximized_capital(projects_until_deadline, total_capital, profits, capital)
  
  project_groups = capital.zip(profits).group_by(&:first).each {|_, projects| projects.map!(&:last)}
  
  project_groups = project_groups.sort_by(&:first).reverse

  project_groups.each do |cap, profits|
    profits.sort!
  end
  
  until project_groups.empty? || projects_until_deadline <= 0
    
    last_project_index = project_groups.bsearch_index do |cap, _|
                                          cap <= total_capital
                                        end

    if last_project_index.nil?
      break
    elsif last_project_index.zero?
      return project_groups.map(&:last).flatten.sort.last(projects_until_deadline).sum + total_capital
    end
    
    project_group = project_groups[last_project_index..].max_by {|_, profits| profits.last}
    
    profit = project_group.last.pop
    if project_group.last.empty?
      project_groups.delete(project_group)
    end

    total_capital += profit
    projects_until_deadline -= 1
  end
  
  total_capital
end
