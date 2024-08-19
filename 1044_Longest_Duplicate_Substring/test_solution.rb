require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_dup_substring' do
    examples.each_with_index do |s, index|
      it 'returns any duplicated substring that has the longest possible length' do
        expect(longest_dup_substring(s)).to eq(results[index])
      end
    end
  end
end
