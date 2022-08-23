require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#large_group_positions' do
    examples.each_with_index do |s, index|
      it 'returns the intervals of every large group sorted in increasing order by start index' do
        expect(large_group_positions(s)).to eq(results[index])
      end
    end
  end
end
