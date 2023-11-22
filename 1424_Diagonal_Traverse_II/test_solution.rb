require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_diagonal_order' do
    examples.each_with_index do |nums, index|
      it 'returns all elements of nums in diagonal order as shown in the images' do
        expect(find_diagonal_order(nums)).to eq(results[index])
      end
    end
  end
end
