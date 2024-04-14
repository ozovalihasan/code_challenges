require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximal_rectangle' do
    examples.each_with_index do |matrix, index|
      it "returns the largest rectangle containing only 1's and return its area" do
        expect(maximal_rectangle(matrix)).to eq(results[index])
      end
    end
  end
end
