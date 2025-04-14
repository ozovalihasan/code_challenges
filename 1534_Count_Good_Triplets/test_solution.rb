require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_good_triplets' do
    examples.each_slice(4).each.with_index do |(arr, int1, int2, int3), index|
      it 'returns the number of good triplets' do
        expect(count_good_triplets(arr, int1, int2, int3)).to eq(results[index])
      end
    end
  end
end
