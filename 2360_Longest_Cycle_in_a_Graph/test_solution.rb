require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_cycle' do
    examples.each_with_index do |edges, index|
      it "returns the length of the longest cycle in the graph. If no cycle exists" do
        expect(longest_cycle(edges)).to eq(results[index])
      end
    end
  end
end
