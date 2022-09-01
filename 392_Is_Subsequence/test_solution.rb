require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_subsequence' do
    examples.each_slice(2).each_with_index do |(s, t), index|
      it 'returns true if s is a subsequence of t, or false otherwise' do
        expect(is_subsequence(s, t)).to eq(results[index])
      end
    end
  end
end
    