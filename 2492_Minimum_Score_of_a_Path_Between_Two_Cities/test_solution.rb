require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_score' do
    examples.each_slice(2).each_with_index do |(n, roads), index|
      it "returns the minimum possible score of a path between cities 1 and n" do
        expect(min_score(n, roads)).to eq(results[index])
      end
    end
  end
end
