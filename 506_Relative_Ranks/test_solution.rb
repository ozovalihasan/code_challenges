require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_relative_ranks' do
    examples.each_with_index do |score, index|
      it "returns an array answer of size n where answer[i] is the rank of the ith athlete" do
        expect(find_relative_ranks(score)).to eq(results[index])
      end
    end
  end
end
