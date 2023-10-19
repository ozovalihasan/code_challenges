require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#backspace_compare' do
    examples.each_slice(2).each_with_index do |(s, t), index|
      it 'returns true if they are equal when both are typed into empty text editors' do
        expect(backspace_compare(s, t)).to eq(results[index])
      end
    end
  end
end
