# @param {String} s
# @param {String} p
# @return {Boolean}

# I couldn't solve the challenge

def is_match(s, p)
  p = "^" << p.gsub("?", ".").gsub(/\*+/, ".*") << "$"
  s.match?(Regexp.new(p))
end