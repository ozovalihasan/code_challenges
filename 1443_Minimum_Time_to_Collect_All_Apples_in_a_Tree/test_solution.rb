require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_time' do
    examples.each_slice(3).each_with_index do |(n, edges, has_apple), index|
      it "returns the minimum time in seconds you have to spend to collect all apples in the tree" do
        expect(min_time(n, edges, has_apple)).to eq(results[index])
      end
    end
  end
end
