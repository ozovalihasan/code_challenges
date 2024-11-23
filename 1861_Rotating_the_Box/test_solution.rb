require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#rotate_the_box' do
    examples.each_with_index do |box, index|
      it 'returns an n x m matrix representing the box after the rotation described above' do
        expect(rotate_the_box(box)).to eq(results[index])
      end
    end
  end
end
