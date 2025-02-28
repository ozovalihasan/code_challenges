require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shortest_common_supersequence' do
    examples.each_slice(2).each_with_index do |(str1, str2), index|
      it 'returns the shortest string that has both str1 and str2 as subsequences' do
        expect(shortest_common_supersequence(str1, str2)).to eq(results[index])
      end
    end
  end
end
