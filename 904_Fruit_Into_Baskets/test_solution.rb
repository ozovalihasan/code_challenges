require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#total_fruit' do
    examples.each_with_index do |fruits, index|
      it 'returns the maximum number of fruits you can pick' do
        expect(total_fruit(fruits)).to eq(results[index])
      end
    end
  end
end
