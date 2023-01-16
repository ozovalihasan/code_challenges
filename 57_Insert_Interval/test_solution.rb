require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#insert' do
    examples.each_slice(2).each_with_index do |(intervals, new_interval), index|
      it 'returns intervals after the insertion' do
        expect(insert(intervals, new_interval)).to eq(results[index])
      end
    end
  end
end
