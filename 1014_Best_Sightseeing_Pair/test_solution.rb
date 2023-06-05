require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_score_sightseeing_pair' do
    examples.each_with_index do |values, index|
      it "returns the maximum score of a pair of sightseeing spots" do
        expect(max_score_sightseeing_pair(values)).to eq(results[index])
      end
    end
  end
end
