require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_almost_equivalent' do
    examples.each_slice(2).each_with_index do |(word1, word2), index|
      it "returns true if word1 and word2 are almost equivalent, or false otherwise" do
        expect(check_almost_equivalent(word1, word2)).to eq(results[index])
      end
    end
  end
end
