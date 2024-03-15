require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#interval_intersection' do
    examples.each_slice(2).each_with_index do |(first_list, second_list), index|
      it 'returns the intersection of these two interval lists' do
        expect(interval_intersection(first_list, second_list)).to eq(results[index])
      end
    end
  end
end
