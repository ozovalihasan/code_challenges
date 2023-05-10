require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_circle_num' do
    examples.each_with_index do |is_connected, index|
      it 'returns the total number of provinces' do
        expect(find_circle_num(is_connected)).to eq(results[index])
      end
    end
  end
end
