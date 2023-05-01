# @param {Integer[]} salary
# @return {Float}
def average(salary)
  (salary - salary.minmax).sum.to_f / (salary.size - 2)
end