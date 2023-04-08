require_relative './solution'
require_relative '../read_test_files'
require_relative './node'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#cloneGraph' do
    examples.each_with_index do |adj_list, index|
      it "returns a deep copy (clone) of the graph" do
        nodes = Array.new(adj_list.size + 1) {|index|  Node.new(index)}
        
        adj_list.each_with_index do |list, index|

          node = nodes[index + 1]

          list.each do |adj_node_val|
            node.neighbors << nodes[adj_node_val]
          end
        end        

        cloned_nodes = []

        cloneGraph(nodes[1])&.to_a(cloned_nodes)

        expect(cloned_nodes[1..] || []).to eq(results[index])
      end
    end
  end
end
