# @param {Integer[]} ranks
# @param {Integer} cars
# @return {Integer}
def repair_cars(ranks, cars)
  max_car = (cars.to_f / ranks.size).ceil
  min_time = (max_car ** 2) * ranks.min
  max_time = (max_car ** 2) * ranks.max

  (min_time..max_time).bsearch do |time|
    ranks.sum { |rank| Math.sqrt(time / rank).to_i } >= cars
  end
end