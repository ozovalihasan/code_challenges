# @param {String[][]} paths
# @return {String}
def dest_city(paths)
  paths = paths.to_h
  entering_cities = paths.values
  leaving_cities = paths.keys
  (entering_cities - leaving_cities).first
end