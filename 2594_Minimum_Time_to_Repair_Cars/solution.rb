# @param {Integer[]} ranks
# @param {Integer} cars
# @return {Integer}
def repair_cars(ranks, cars)
  max_car = (cars.to_f / ranks.size).ceil
  
  (((max_car ** 2) * ranks.min)..((max_car ** 2) * ranks.max)).bsearch do |max_time|
    ranks.sum {|rank| Math.sqrt((max_time / rank)).to_i} >= cars
  end
end