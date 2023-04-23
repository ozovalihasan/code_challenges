require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#number_of_arrays' do
    examples.each_slice(2).each_with_index do |(s, k), index|
      it 'returns the number of the possible arrays that can be printed as s using the mentioned program' do
        expect(number_of_arrays(s, k)).to eq(results[index])
      end
    end
  end
end
