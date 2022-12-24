require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_tilings' do
    examples.each_with_index do |n, index|
      it "returns the number of ways to tile an 2 x n board" do
        expect(num_tilings(n)).to eq(results[index])
      end
    end
  end
end
