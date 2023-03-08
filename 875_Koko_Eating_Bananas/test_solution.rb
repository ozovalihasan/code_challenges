require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_eating_speed' do
    examples.each_slice(2).each_with_index do |(piles, h), index|
      it 'returns the minimum integer k such that she can eat all the bananas within h hours' do
        expect(min_eating_speed(piles, h)).to eq(results[index])
      end
    end
  end
end
