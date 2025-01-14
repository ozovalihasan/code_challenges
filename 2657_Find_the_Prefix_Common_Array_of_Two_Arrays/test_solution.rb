require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_the_prefix_common_array' do
    examples.each_slice(2).each_with_index do |(a, b), index|
      it 'returns the prefix common array of A and B' do
        expect(find_the_prefix_common_array(a, b)).to eq(results[index])
      end
    end
  end
end
