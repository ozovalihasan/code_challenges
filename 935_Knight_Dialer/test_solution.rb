require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#knight_dialer' do
    examples.each_with_index do |nums, index|
      it 'returns how many distinct phone numbers of length n we can dial' do
        expect(knight_dialer(nums)).to eq(results[index])
      end
    end
  end
end
