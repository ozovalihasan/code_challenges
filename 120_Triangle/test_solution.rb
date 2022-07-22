require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_total' do
    examples.each_with_index do |(triangle, target_sum), index|
      it 'returns the minimum path sum from top to bottom.' do
        expect(minimum_total(triangle)).to eq(results[index])
      end
    end
  end
end
