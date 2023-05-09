require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#spiral_order' do
    examples.each_with_index do |matrix, index|
      it "returns all elements of the matrix in spiral order" do
        expect(spiral_order(matrix)).to eq(results[index])
      end
    end
  end
end
