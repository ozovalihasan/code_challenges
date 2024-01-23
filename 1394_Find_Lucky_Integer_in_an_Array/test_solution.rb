require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_lucky' do
    examples.each_with_index do |arr, index|
      it 'returns the largest lucky integer in the array. If there is no lucky integer return -1' do
        expect(find_lucky(arr)).to eq(results[index])
      end
    end
  end
end
