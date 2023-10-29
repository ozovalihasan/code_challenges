require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#poor_pigs' do
    examples.each_slice(3).each_with_index do |(buckets, minutes_to_die, minutes_to_test), index|
      it 'returns the minimum number of pigs needed to figure out which bucket is poisonous within the allotted time' do
        expect(poor_pigs(buckets, minutes_to_die, minutes_to_test)).to eq(results[index])
      end
    end
  end
end
