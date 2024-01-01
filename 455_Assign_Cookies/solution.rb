# @param {Integer[]} greed_factors
# @param {Integer[]} cookie_sizes
# @return {Integer}
def find_content_children(greed_factors, cookie_sizes)
  greed_factors.sort!
  cookie_sizes.sort!

  children_count = 0
  cookie_sizes.each do |cookie_size|
    break unless greed_factors[children_count]

    children_count += 1 if cookie_size >= greed_factors[children_count]
  end

  children_count
end
