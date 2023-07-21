require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_number_of_lis' do
    examples.each_with_index do |nums, index|
      it 'returns the number of longest increasing subsequences' do
        expect(find_number_of_lis(nums)).to eq(results[index])
      end
    end
  end
end
