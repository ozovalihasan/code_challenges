# @param {String[]} queries
# @param {String} pattern
# @return {Boolean[]}
def camel_match(queries, pattern)
  pattern = "^[a-z]*" << pattern.split("").join("[a-z]*") << "[a-z]*$"
  queries.map {|query| query.match(pattern) ? true : false}
end