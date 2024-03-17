require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#equal_substring' do
    examples.each_slice(3).each_with_index do |(s, t, max_cost), index|
      it 'returns the sum of binaries as a binary string' do
        expect(equal_substring(s, t, max_cost)).to eq(results[index])
      end
    end
  end
end
