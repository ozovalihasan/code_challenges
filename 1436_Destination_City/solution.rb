# @param {String[][]} paths
# @return {String}
def dest_city(paths)
  leaving_cities, entering_cities = paths.transpose
  (entering_cities - leaving_cities).first
end