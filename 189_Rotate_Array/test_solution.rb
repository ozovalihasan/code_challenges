require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#rotate' do
    examples.each_slice(2).each_with_index do |(nums, k), index|
      it 'returns an array rotated to the right by k steps' do
        rotate(nums, k)
        expect(nums).to eq(results[index])
      end
    end
  end
end
