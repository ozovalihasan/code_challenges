require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#image_smoother' do
    examples.each_with_index do |img, index|
      it 'returns the image after applying the smoother on each cell of it' do
        expect(image_smoother(img)).to eq(results[index])
      end
    end
  end
end
