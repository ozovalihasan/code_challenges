require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_power_of_two' do
    examples.each_with_index do |n, index|
      it 'returns true if it is a power of two' do
        expect(is_power_of_two(n)).to eq(results[index])
      end
    end
  end
end
