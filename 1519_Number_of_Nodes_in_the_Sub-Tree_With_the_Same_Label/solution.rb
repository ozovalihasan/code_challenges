# @param {Integer} n
# @param {Integer[][]} edges
# @param {String} labels
# @return {Integer[]}
def count_sub_trees(n, edges, labels)
  @tree = build_tree(edges)  

  count_labels(labels)  
end

def build_tree(edges)
  tree = { 0 => []}
  
  edges.each do |start_node, end_node|
    if tree[start_node]
      tree[start_node] << end_node
      tree[end_node] = []
    else
      tree[end_node] << start_node
      tree[start_node] = []
    end
  end

  tree
end

def count_labels(labels)
  @result = []
  @labels = labels.split("")
  @label_values = Hash.new(0)

  starting_node = 0
  check_node(starting_node, @labels[starting_node])
  @result
end

def check_node(node_val, label)
  label_val = @label_values[ label ]
  @label_values[ label ] += 1
  @tree[node_val].each { |node| check_node(node, @labels[node]) }
  @result[node_val] = @label_values[label] - label_val
end