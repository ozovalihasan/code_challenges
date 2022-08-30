require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#flood_fill' do
    examples.each_slice(4).each_with_index do |(image,sr, sc, color), index|
      it 'returns the modified image after performing the flood fill' do
        expect(flood_fill(image, sr, sc, color)).to eq(results[index])
      end
    end
  end
end
