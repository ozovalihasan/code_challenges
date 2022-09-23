require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#valid_mountain_array' do
    examples.each_with_index do |arr, index|
      it 'returns true if and only if it is a valid mountain array' do
        expect(valid_mountain_array(arr)).to eq(results[index])
      end
    end
  end
end
