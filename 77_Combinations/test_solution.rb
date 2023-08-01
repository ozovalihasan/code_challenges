require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#combine' do
    examples.each_slice(2).each_with_index do |(n, k), index|
      it 'all possible combinations of k numbers chosen from the range [1, n]' do
        expect(combine(n, k)).to match_array(results[index])
      end
    end
  end
end
