require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_largest_group' do
    examples.each_with_index do |n, index|
      it 'returns the number of groups that have the largest size' do
        expect(count_largest_group(n)).to eq(results[index])
      end
    end
  end
end
