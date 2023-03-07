require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_time' do
    examples.each_slice(2).each_with_index do |(time, total_trips), index|
      it 'returns the index of the node that can be reached from both node1 and node2' do
        expect(minimum_time(time, total_trips)).to eq(results[index])
      end
    end
  end
end
