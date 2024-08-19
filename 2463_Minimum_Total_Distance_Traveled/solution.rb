# @param {Integer[]} robots
# @param {Integer[][]} factories
# @return {Integer}

"I haven't solved it yet "

def minimum_total_distance(robots, factories)
  robots.sort!
  new_factories = []
  factories.sort_by!(&:first).map do |factory, count|
    new_factories.concat(Array.new(count, factory))
  end
  selected_combination = new_factories.combination(robots.size).min_by do |factories_combination|
    robots.size.times.sum do |index|
      (factories_combination[index] - robots[index]).abs
    end
  end
  robots.size.times.sum do |index|
    (selected_combination[index] - robots[index]).abs
  end
end