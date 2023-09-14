require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_itinerary' do
    examples.each_with_index do |tickets, index|
      it 'returns the itinerary by reconstructing in order' do
        expect(find_itinerary(tickets)).to eq(results[index])
      end
    end
  end
end
