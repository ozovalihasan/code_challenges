require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_judge' do
    examples.each_with_index do |heights, index|
      it 'Return the number of indices where heights[i] != expected[i]' do
        expect(height_checker(heights)).to eq(results[index])
      end
    end
  end
end
