require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_score' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum score you can receive after performing n operations' do
        expect(max_score(nums)).to eq(results[index])
      end
    end
  end
end
