require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_servers' do
    examples.each_with_index do |grid, index|
      it 'returns the number of servers that communicate with any other server' do
        expect(count_servers(grid)).to eq(results[index])
      end
    end
  end
end
