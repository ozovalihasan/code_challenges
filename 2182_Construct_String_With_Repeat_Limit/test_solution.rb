require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#repeat_limited_string' do
    examples.each_slice(2).with_index do |(str, repeat_limit), index|
      it 'returns the lexicographically largest repeatLimitedString possible' do
        expect(repeat_limited_string(str, repeat_limit)).to eq(results[index])
      end
    end
  end
end
