require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#are_almost_equal' do
    examples.each_slice(2).with_index do |(s1, s2), index|
      it 'returns true if it is possible to make both strings equal by performing at most one string swap on exactly one of the strings' do
        expect(are_almost_equal(s1, s2)).to eq(results[index])
      end
    end
  end
end
