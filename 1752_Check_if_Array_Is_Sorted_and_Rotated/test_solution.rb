require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check' do
    examples.each_with_index do |nums, index|
      it 'returns true if the array was originally sorted in non-decreasing order' do
        expect(check(nums)).to eq(results[index])
      end
    end
  end
end
