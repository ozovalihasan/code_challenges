require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_straight_line' do
    examples.each_slice(2).each_with_index do |(s, shifts), index|
      it 'returns the final string after all such shifts to s are applied' do
        expect(shifting_letters(s, shifts)).to eq(results[index])
      end
    end
  end
end
