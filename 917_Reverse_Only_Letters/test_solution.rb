require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reverse_only_letters' do
    examples.each_with_index do |s, index|
      it 'returns s after reversing it' do
        expect(reverse_only_letters(s)).to eq(results[index])
      end
    end
  end
end
