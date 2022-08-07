require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_place_flowers' do
    examples.each_slice(2).each_with_index do |(flowerbed, n), index|
      it 'returns if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule.' do
        expect(can_place_flowers(flowerbed, n)).to eq(results[index])
      end
    end
  end
end
