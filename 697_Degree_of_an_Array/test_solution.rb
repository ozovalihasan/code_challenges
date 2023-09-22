require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_shortest_sub_array' do
    examples.each_with_index do |nums, index|
      it 'returns the smallest possible length of a (contiguous) subarray of nums, that has the same degree as nums' do
        expect(find_shortest_sub_array(nums)).to eq(results[index])
      end
    end
  end
end
    