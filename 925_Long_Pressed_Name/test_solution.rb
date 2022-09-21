require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_long_pressed_name' do
    examples.each_slice(2).each_with_index do |(name, typed), index|
      it 'returns true if "typed" contains "name"' do
        expect(is_long_pressed_name(name, typed)).to eq(results[index])
      end
    end
  end
end
