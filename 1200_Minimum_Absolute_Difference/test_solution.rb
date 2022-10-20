require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_abs_difference' do
    examples.each_with_index do |arr, index|
      it 'returns a list of pairs in ascending order(with respect to pairs)' do
        expect(minimum_abs_difference(arr)).to eq(results[index])
      end
    end
  end
end
