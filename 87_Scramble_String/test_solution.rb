require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_scramble' do
    examples.each_slice(2).each_with_index do |(s1, s2), index|
      it 'returns true if s2 is a scrambled string of s1, otherwise, returns false' do
        expect(is_scramble(s1, s2)).to eq(results[index])
      end
    end
  end
end
