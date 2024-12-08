require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_two_events' do
    examples.each_with_index do |events, index|
      it 'returns maximum sum ' do
        expect(max_two_events(events)).to eq(results[index])
      end
    end
  end
end
