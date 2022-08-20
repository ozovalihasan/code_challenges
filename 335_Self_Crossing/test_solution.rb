require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_self_crossing' do
    examples.each_with_index do |distance, index|
      it 'returns true if the path crosses itself' do
        expect(is_self_crossing(distance)).to eq(results[index])
      end
    end
  end
end
