# @param {String} s1
# @param {String} s2
# @param {String} base_str
# @return {String}
def smallest_equivalent_string(s1, s2, base_str)
  graph = prepare_graph(s1, s2)
  smallest_equals = find_smallest_equals(graph)
  base_str.split("").map { |char| smallest_equals[char] || char }.join
end

def find_smallest_equals(graph)
  groups = []
  
  until graph.empty? 
    current = [graph.first.first]
    group = []
    
    until current.empty?
      current = current.map { |char| graph.delete char }
      current.compact!
      current.flatten!
      group.concat current
    end

    groups << group
  end

  groups.each_with_object({}) do |sub_arr, smallest_equals|
    min = sub_arr.min
    sub_arr.each do |char|
      smallest_equals[ char ] = min
    end
  end
end

def prepare_graph(s1, s2)
  s1.split("")
    .zip(s2.split(""))
    .each_with_object({}) do |(char1, char2), graph|

    update_graph(graph, char1, char2)
    update_graph(graph, char2, char1)
  end
end

def update_graph(graph, char1, char2)
  if graph[ char2 ]
    graph[ char2 ] << char1
  else
    graph[ char2 ] = [ char1, char2 ]
  end
end