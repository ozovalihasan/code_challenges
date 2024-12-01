require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_if_exist' do
    examples.each_with_index do |arr, index|
      it 'returns whether there exist two indices i and j satisfying given conditions' do
        expect(check_if_exist(arr)).to eq(results[index])
      end
    end
  end
end
