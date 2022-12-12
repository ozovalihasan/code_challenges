require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#full_justify' do
    examples.each_with_index do |n, index|
      it 'returns the number of distinct ways can you climb to the top' do
        expect(climb_stairs(n)).to eq(results[index])
      end
    end
  end
end
