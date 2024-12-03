require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#add_spaces' do
    examples.each_slice(2).with_index do |(str, spaces), index|
      it 'returns the modified string after the spaces have been added' do
        expect(add_spaces(str, spaces)).to eq(results[index])
      end
    end
  end
end
