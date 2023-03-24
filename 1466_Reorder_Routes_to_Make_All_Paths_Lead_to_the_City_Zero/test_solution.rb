require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_reorder' do
    examples.each_slice(2).each_with_index do |(n, connections), index|
      it "returns the minimum number of edges changed" do
        expect(min_reorder(n, connections)).to eq(results[index])
      end
    end
  end
end
