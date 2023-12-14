# @param {Integer[][]} edges
# @return {Integer}
def find_center(edges)
  edges.first.find { |point| edges.last.include? point }
end
