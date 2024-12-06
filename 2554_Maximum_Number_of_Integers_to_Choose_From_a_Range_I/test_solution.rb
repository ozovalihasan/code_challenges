require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_count' do
    examples.each_slice(3).each_with_index do |(banned, range_max, max_sum), index|
      it 'returns the maximum number of integers you can choose following the mentioned rules' do
        expect(max_count(banned, range_max, max_sum)).to eq(results[index])
      end
    end
  end
end
