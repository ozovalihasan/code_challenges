require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_steps' do
    examples.each_slice(2).with_index do |(s, t), index|
      it 'returns the minimum number of steps to make t an anagram of s' do
        expect(min_steps(s, t)).to eq(results[index])
      end
    end
  end
end
