require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#ideal_arrays' do
    examples.each_slice(2).each_with_index do |(n, max_value), index|
      it 'returns the number of distinct ideal arrays of length n' do
        expect(ideal_arrays(n, max_value)).to eq(results[index])
      end
    end
  end
end
