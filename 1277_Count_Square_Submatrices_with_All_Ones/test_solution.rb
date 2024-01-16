require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_squares' do
    examples.each_with_index do |matrix, index|
      it 'returns how many square submatrices have all ones' do
        expect(count_squares(matrix)).to eq(results[index])
      end
    end
  end
end
