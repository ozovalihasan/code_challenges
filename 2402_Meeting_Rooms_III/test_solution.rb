require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#most_booked' do
    examples.each_slice(2).each_with_index do |(n, meetings), index|
      it 'returns the number of the room that held the most meetings' do
        expect(most_booked(n, meetings)).to eq(results[index])
      end
    end
  end
end
