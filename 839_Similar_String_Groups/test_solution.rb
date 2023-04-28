require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_similar_groups' do
    examples.each_with_index do |strs, index|
      it "returns the number of similar words groups" do
        expect(num_similar_groups(strs)).to eq(results[index])
      end
    end
  end
end
