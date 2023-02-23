require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_maximized_capital' do
    examples.each_slice(4).each_with_index do |(k, w, profits, capital), index|
      it 'returns the least weight capacity of the ship that will result in all the packages on the conveyor belt being shipped within `days` days' do
        expect(find_maximized_capital(k, w, profits, capital)).to eq(results[index])
      end
    end
  end
end
