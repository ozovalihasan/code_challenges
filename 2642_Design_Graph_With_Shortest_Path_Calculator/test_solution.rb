require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'Graph' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a class 'Graph'" do
        graph = nil
        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when 'Graph'
            graph = Graph.new(*param)
          when 'addEdge'
            graph.add_edge(*param)
          when 'shortestPath'
            expect(graph.shortest_path(*param)).to eq(results[index][index2])
          end
        end
      end
    end
  end
end
