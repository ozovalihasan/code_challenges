require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_capability' do
    examples.each_slice(2).each_with_index do |(nums, min_house_num), index|
      it 'returns the maximum number of candies each child can get' do
        expect(min_capability(nums, min_house_num)).to eq(results[index])
      end
    end
  end
end
