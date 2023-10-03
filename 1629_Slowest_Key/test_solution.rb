require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#slowest_key' do
    examples.each_slice(2).each_with_index do |(release_times, keys_pressed), index|
      it 'returns the key of the keypress that had the longest duration' do
        expect(slowest_key(release_times, keys_pressed)).to eq(results[index])
      end
    end
  end
end
