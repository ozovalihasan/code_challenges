require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#remove_covered_intervals' do
    examples.each_with_index do |intervals, index|
      it 'returns the number of remaining intervals' do
        expect(remove_covered_intervals(intervals)).to eq(results[index])
      end
    end
  end
end
