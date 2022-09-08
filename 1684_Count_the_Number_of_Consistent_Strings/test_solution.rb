require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_straight_line' do
    examples.each_slice(2).each_with_index do |(allowed, words), index|
      it 'returns the number of consistent strings in the array words' do
        expect(count_consistent_strings(allowed, words)).to eq(results[index])
      end
    end
  end
end
