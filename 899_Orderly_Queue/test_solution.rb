require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#orderly_queue' do
    examples.each_slice(2).each_with_index do |(s, k), index|
      it "returns the lexicographically smallest string" do
        expect(orderly_queue(s, k)).to eq(results[index])
      end
    end
  end
end
