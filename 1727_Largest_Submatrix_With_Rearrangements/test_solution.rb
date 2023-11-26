require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_submatrix' do
    examples.each_with_index do |matrix, index|
      it "returns the area of the largest submatrix within matrix where every element of the submatrix is 1 after reordering the columns optimally" do
        expect(largest_submatrix(matrix)).to eq(results[index])
      end
    end
  end
end
