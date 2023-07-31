require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_delete_sum' do
    examples.each_slice(2).each_with_index do |(s1, s2), index|
      it 'returns the lowest ASCII sum of deleted characters to make two strings equal' do
        expect(minimum_delete_sum(s1, s2)).to eq(results[index])
      end
    end
  end
end
