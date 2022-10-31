require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_toeplitz_matrix' do
    examples.each_with_index do |matrix, index|
      it "returns true if the matrix is Toeplitz" do
        expect(is_toeplitz_matrix(matrix)).to eq(results[index])
      end
    end
  end
end
