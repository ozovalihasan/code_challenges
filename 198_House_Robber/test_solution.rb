require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#rob' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum amount of money you can rob tonight without alerting the police' do
        expect(rob(nums)).to eq(results[index])
      end
    end
  end
end
