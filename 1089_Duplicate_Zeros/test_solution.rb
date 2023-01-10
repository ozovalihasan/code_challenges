require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#duplicate_zeros' do
    examples.each_with_index do |arr, index|
      it 'modifies the original array by duplicating each occurrence of zero with the fixed length' do
        duplicate_zeros(arr)
        expect(arr).to eq(results[index])
      end
    end
  end
end
