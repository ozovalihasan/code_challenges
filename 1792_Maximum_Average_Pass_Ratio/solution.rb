# @param {Integer[][]} classes
# @param {Integer} extra_students
# @return {Float}
def max_average_ratio(classes, extra_students)
  all_pass = classes.count { |pass, total| pass == total }
  classes.reject! { |pass, total| pass == total }

  classes.map! { |pass, total| [pass.to_f, total, ((pass.to_f + 1) / (total + 1)) - (pass.to_f / total)] }
  classes.sort_by!(&:last)
  
  unless classes.empty?
    extra_students.times do 
      checked_class = classes.pop
      checked_class[0] += 1
      checked_class[1] += 1
      checked_class[2] = (((checked_class[0] + 1) / (checked_class[1] + 1)) - (checked_class[0] / checked_class[1]))

      index = classes.bsearch_index { |_pass, _total, diff| diff >= checked_class.last } || classes.size
      
      classes.insert(index, checked_class)
    end
  end

  ((classes.sum { |pass, total, _diff| (pass.to_f / total) } + all_pass) / (classes.size + all_pass)).round(5)
end
