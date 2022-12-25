require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#answer_queries' do
    examples.each_slice(2).each_with_index do |(nums, queries), index|
      it "returns an array answer of length m where answer[i] is the maximum size of a subsequence" do
        expect(answer_queries(nums, queries)).to eq(results[index])
      end
    end
  end
end
