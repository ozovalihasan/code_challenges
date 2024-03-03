require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#top_k_frequent' do
    examples.each_slice(2).each_with_index do |(words, k), index|
      it "returns the answer sorted by the frequency from highest to lowest" do
        expect(top_k_frequent(words, k)).to eq(results[index])
      end
    end
  end
end
