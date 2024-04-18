require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#matrix_reshape' do
    examples.each_slice(3).each_with_index do |(mat, r, c), index|
      it "returns the new reshaped matrix" do
        expect(matrix_reshape(mat, r, c)).to eq(results[index])
      end
    end
  end
end
