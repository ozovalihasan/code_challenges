require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#search' do
    examples.each_slice(2).each_with_index do |(nums, target), index|
      it 'returns the target"s index or -1' do
        expect(search(nums, target)).to eq(results[index])
      end
    end
  end
end
