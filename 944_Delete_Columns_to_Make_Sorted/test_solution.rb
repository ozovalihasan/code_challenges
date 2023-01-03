require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_deletion_size' do
    examples.each_with_index do |strs, index|
      it 'returns the number of columns that it is necessary to delete' do
        expect(min_deletion_size(strs)).to eq(results[index])
      end
    end
  end
end
