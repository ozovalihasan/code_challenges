require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_of_arrays' do
    examples.each_slice(3).each_with_index do |(n, m, k), index|
      it 'returns the number of ways to build the array arr under the mentioned conditions' do
        expect(num_of_arrays(n, m, k)).to eq(results[index])
      end
    end
  end
end
