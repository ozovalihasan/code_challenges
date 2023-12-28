# @param {Float} celsius
# @return {Float[]}
def convert_temperature(celsius)
  kelvin = celsius + 273.15
  fahrenheit = celsius * 1.80 + 32.0
  [kelvin, fahrenheit]
end